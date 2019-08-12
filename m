From: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH v5 01/11] lib/sort.c: implement sort() variant taking context
 argument
Date: Mon, 12 Aug 2019 16:35:12 -0300
Message-ID: <20190812193522.10911-2-ezequiel@collabora.com>
References: <20190812193522.10911-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190812193522.10911-1-ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: fbuergisser-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Nicolas Dufresne <nicolas.dufresne-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Alexandre Courbot <acourbot-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, Rasmus Villemoes <linux-qQsb+v5E8BnlAoU/VqSP6n9LOBIZ5rWg@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Philipp Zabel <p.zabel-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

From: Rasmus Villemoes <linux-qQsb+v5E8BnlAoU/VqSP6n9LOBIZ5rWg@public.gmane.org>

Our list_sort() utility has always supported a context argument that
is passed through to the comparison routine. Now there's a use case
for the similar thing for sort().

This implements sort_r by simply extending the existing sort function
in the obvious way. To avoid code duplication, we want to implement
sort() in terms of sort_r(). The naive way to do that is

static int cmp_wrapper(const void *a, const void *b, const void *ctx)
{
  int (*real_cmp)(const void*, const void*) = ctx;
  return real_cmp(a, b);
}

sort(..., cmp) { sort_r(..., cmp_wrapper, cmp) }

but this would do two indirect calls for each comparison. Instead, do
as is done for the default swap functions - that only adds a cost of a
single easily predicted branch to each comparison call.

Aside from introducing support for the context argument, this also
serves as preparation for patches that will eliminate the indirect
comparison calls in common cases.

Requested-by: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Signed-off-by: Rasmus Villemoes <linux-qQsb+v5E8BnlAoU/VqSP6n9LOBIZ5rWg@public.gmane.org>
Signed-off-by: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Acked-by: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Tested-by: Philipp Zabel <p.zabel-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>
---
 include/linux/sort.h |  5 +++++
 lib/sort.c           | 34 ++++++++++++++++++++++++++++------
 2 files changed, 33 insertions(+), 6 deletions(-)

diff --git a/include/linux/sort.h b/include/linux/sort.h
index 2b99a5dd073d..61b96d0ebc44 100644
--- a/include/linux/sort.h
+++ b/include/linux/sort.h
@@ -4,6 +4,11 @@
 
 #include <linux/types.h>
 
+void sort_r(void *base, size_t num, size_t size,
+	    int (*cmp)(const void *, const void *, const void *),
+	    void (*swap)(void *, void *, int),
+	    const void *priv);
+
 void sort(void *base, size_t num, size_t size,
 	  int (*cmp)(const void *, const void *),
 	  void (*swap)(void *, void *, int));
diff --git a/lib/sort.c b/lib/sort.c
index cf408aec3733..d54cf97e9548 100644
--- a/lib/sort.c
+++ b/lib/sort.c
@@ -144,6 +144,18 @@ static void do_swap(void *a, void *b, size_t size, swap_func_t swap_func)
 		swap_func(a, b, (int)size);
 }
 
+typedef int (*cmp_func_t)(const void *, const void *);
+typedef int (*cmp_r_func_t)(const void *, const void *, const void *);
+#define _CMP_WRAPPER ((cmp_r_func_t)0L)
+
+static int do_cmp(const void *a, const void *b,
+		  cmp_r_func_t cmp, const void *priv)
+{
+	if (cmp == _CMP_WRAPPER)
+		return ((cmp_func_t)(priv))(a, b);
+	return cmp(a, b, priv);
+}
+
 /**
  * parent - given the offset of the child, find the offset of the parent.
  * @i: the offset of the heap element whose parent is sought.  Non-zero.
@@ -171,12 +183,13 @@ static size_t parent(size_t i, unsigned int lsbit, size_t size)
 }
 
 /**
- * sort - sort an array of elements
+ * sort_r - sort an array of elements
  * @base: pointer to data to sort
  * @num: number of elements
  * @size: size of each element
  * @cmp_func: pointer to comparison function
  * @swap_func: pointer to swap function or NULL
+ * @priv: third argument passed to comparison function
  *
  * This function does a heapsort on the given array.  You may provide
  * a swap_func function if you need to do something more than a memory
@@ -188,9 +201,10 @@ static size_t parent(size_t i, unsigned int lsbit, size_t size)
  * O(n*n) worst-case behavior and extra memory requirements that make
  * it less suitable for kernel use.
  */
-void sort(void *base, size_t num, size_t size,
-	  int (*cmp_func)(const void *, const void *),
-	  void (*swap_func)(void *, void *, int size))
+void sort_r(void *base, size_t num, size_t size,
+	    int (*cmp_func)(const void *, const void *, const void *),
+	    void (*swap_func)(void *, void *, int size),
+	    const void *priv)
 {
 	/* pre-scale counters for performance */
 	size_t n = num * size, a = (num/2) * size;
@@ -238,12 +252,12 @@ void sort(void *base, size_t num, size_t size,
 		 * average, 3/4 worst-case.)
 		 */
 		for (b = a; c = 2*b + size, (d = c + size) < n;)
-			b = cmp_func(base + c, base + d) >= 0 ? c : d;
+			b = do_cmp(base + c, base + d, cmp_func, priv) >= 0 ? c : d;
 		if (d == n)	/* Special case last leaf with no sibling */
 			b = c;
 
 		/* Now backtrack from "b" to the correct location for "a" */
-		while (b != a && cmp_func(base + a, base + b) >= 0)
+		while (b != a && do_cmp(base + a, base + b, cmp_func, priv) >= 0)
 			b = parent(b, lsbit, size);
 		c = b;			/* Where "a" belongs */
 		while (b != a) {	/* Shift it into place */
@@ -252,4 +266,12 @@ void sort(void *base, size_t num, size_t size,
 		}
 	}
 }
+EXPORT_SYMBOL(sort_r);
+
+void sort(void *base, size_t num, size_t size,
+	  int (*cmp_func)(const void *, const void *),
+	  void (*swap_func)(void *, void *, int size))
+{
+	return sort_r(base, num, size, _CMP_WRAPPER, swap_func, cmp_func);
+}
 EXPORT_SYMBOL(sort);
-- 
2.22.0
