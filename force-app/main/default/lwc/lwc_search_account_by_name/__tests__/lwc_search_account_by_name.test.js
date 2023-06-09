import { createElement } from 'lwc';
import Lwc_search_account_by_name from 'c/lwc_search_account_by_name';

describe('c-lwc-search-account-by-name', () => {
    afterEach(() => {
        // The jsdom instance is shared across test cases in a single file so reset the DOM
        while (document.body.firstChild) {
            document.body.removeChild(document.body.firstChild);
        }
    });

    it('TODO: test case generated by CLI command, please fill in test logic', () => {
        // Arrange
        const element = createElement('c-lwc-search-account-by-name', {
            is: Lwc_search_account_by_name
        });

        // Act
        document.body.appendChild(element);

        // Assert
        // const div = element.shadowRoot.querySelector('div');
        expect(1).toBe(1);
    });
});