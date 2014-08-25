// NSFetchedResultsControllerDelegate
// Placeholders for the fetched results controller delegate methods
//
// IDECodeSnippetCompletionPrefix: fetch
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 524614D3-4743-4225-A646-598C02F8B593
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
#pragma mark - NSFetchedResultsControllerDelegate
	
	- (void)controllerWillChangeContent:(NSFetchedResultsController *)controller {
	    [self.tableView beginUpdates];
	}
	
	- (void)controller:(NSFetchedResultsController *)controller
	  didChangeSection:(id <NSFetchedResultsSectionInfo>)sectionInfo
	           atIndex:(NSUInteger)sectionIndex
	     forChangeType:(NSFetchedResultsChangeType)type
	{
	    switch(type) {
	        case NSFetchedResultsChangeInsert:
	            [self.tableView insertSections:[NSIndexSet indexSetWithIndex:sectionIndex] withRowAnimation:UITableViewRowAnimationAutomatic];
	            break;
	        case NSFetchedResultsChangeDelete:
	            [self.tableView deleteSections:[NSIndexSet indexSetWithIndex:sectionIndex] withRowAnimation:UITableViewRowAnimationAutomatic];
	            break;
	    }
	}
	
	- (void)controller:(NSFetchedResultsController *)controller
	   didChangeObject:(id)object
	       atIndexPath:(NSIndexPath *)indexPath
	     forChangeType:(NSFetchedResultsChangeType)type
	      newIndexPath:(NSIndexPath *)newIndexPath
	{    
	    switch(type) {
	        case NSFetchedResultsChangeInsert:
	            [self.tableView insertRowsAtIndexPaths:[NSArray arrayWithObject:newIndexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
	            break;
	        case NSFetchedResultsChangeDelete:
	            [self.tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
	            break;
	        case NSFetchedResultsChangeUpdate:
	            [self configureCell:[self.tableView cellForRowAtIndexPath:indexPath] forRowAtIndexPath:indexPath];
	            break;
	        case NSFetchedResultsChangeMove:
	            [self.tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
	            [self.tableView insertRowsAtIndexPaths:[NSArray arrayWithObject:newIndexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
	            break;
	    }
	}
	
	- (void)controllerDidChangeContent:(NSFetchedResultsController *)controller {
	    [self.tableView endUpdates];
	}
