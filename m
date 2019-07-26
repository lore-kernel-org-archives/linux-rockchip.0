From: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [PATCH 1/9] lib/sort.c: implement sort() variant taking context
 argument
Date: Thu, 25 Jul 2019 17:05:47 -0700
Message-ID: <20190725170547.a8a357dd76cc586f475b782d@linux-foundation.org>
References: <20190619121540.29320-1-boris.brezillon@collabora.com>
 <20190619121540.29320-2-boris.brezillon@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190619121540.29320-2-boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: Nicolas Dufresne <nicolas-dDhyB4GVkw9AFePFGvp55w@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, Rasmus Villemoes <linux-qQsb+v5E8BnlAoU/VqSP6n9LOBIZ5rWg@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Sakari Ailus <sakari.ailus-X3B1VOXEql0@public.gmane.org>, Laurent Pinchart <laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>, Philipp Zabel <p.zabel-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>, Hans Verkuil <hans.verkuil-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>, Mauro Carvalho Chehab <mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Wed, 19 Jun 2019 14:15:32 +0200 Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org> wrote:

> From: Rasmus Villemoes <linux-qQsb+v5E8BnlAoU/VqSP6n9LOBIZ5rWg@public.gmane.org>
> 
> Our list_sort() utility has always supported a context argument that
> is passed through to the comparison routine. Now there's a use case
> for the similar thing for sort().
> 
> This implements sort_r by simply extending the existing sort function
> in the obvious way. To avoid code duplication, we want to implement
> sort() in terms of sort_r(). The naive way to do that is
> 
> static int cmp_wrapper(const void *a, const void *b, const void *ctx)
> {
>   int (*real_cmp)(const void*, const void*) = ctx;
>   return real_cmp(a, b);
> }
> 
> sort(..., cmp) { sort_r(..., cmp_wrapper, cmp) }
> 
> but this would do two indirect calls for each comparison. Instead, do
> as is done for the default swap functions - that only adds a cost of a
> single easily predicted branch to each comparison call.
> 
> Aside from introducing support for the context argument, this also
> serves as preparation for patches that will eliminate the indirect
> comparison calls in common cases.

Acked-by: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

> --- a/lib/sort.c
> +++ b/lib/sort.c
> @@ -144,6 +144,18 @@ static void do_swap(void *a, void *b, size_t size, swap_func_t swap_func)
>  		swap_func(a, b, (int)size);
>  }
>  
> +typedef int (*cmp_func_t)(const void *, const void *);
> +typedef int (*cmp_r_func_t)(const void *, const void *, const void *);
> +#define _CMP_WRAPPER ((cmp_r_func_t)0L)

Although I can't say I'm a fan of _CMP_WRAPPER.  I don't understand
what the name means.  Why not simply open-code NULL in the two sites?

> +static int do_cmp(const void *a, const void *b,
> +		  cmp_r_func_t cmp, const void *priv)
> +{
> +	if (cmp == _CMP_WRAPPER)
> +		return ((cmp_func_t)(priv))(a, b);
> +	return cmp(a, b, priv);
> +}
> +
>  /**
>   * parent - given the offset of the child, find the offset of the parent.
>   * @i: the offset of the heap element whose parent is sought.  Non-zero.
> @@ -171,12 +183,13 @@ static size_t parent(size_t i, unsigned int lsbit, size_t size)
>  }
>  
>  /**
> - * sort - sort an array of elements
> + * sort_r - sort an array of elements
>   * @base: pointer to data to sort
>   * @num: number of elements
>   * @size: size of each element
>   * @cmp_func: pointer to comparison function
>   * @swap_func: pointer to swap function or NULL
> + * @priv: third argument passed to comparison function

Passing priv==NULLis part of the interface and should be documented?

>   *
>   * This function does a heapsort on the given array.  You may provide
>   * a swap_func function if you need to do something more than a memory
> @@ -188,9 +201,10 @@ static size_t parent(size_t i, unsigned int lsbit, size_t size)
>   * O(n*n) worst-case behavior and extra memory requirements that make
>   * it less suitable for kernel use.
>   */
> -void sort(void *base, size_t num, size_t size,
> -	  int (*cmp_func)(const void *, const void *),
> -	  void (*swap_func)(void *, void *, int size))
> +void sort_r(void *base, size_t num, size_t size,
> +	    int (*cmp_func)(const void *, const void *, const void *),
> +	    void (*swap_func)(void *, void *, int size),
> +	    const void *priv)
>  {
>  	/* pre-scale counters for performance */
>  	size_t n = num * size, a = (num/2) * size;
> @@ -238,12 +252,12 @@ void sort(void *base, size_t num, size_t size,
>  		 * average, 3/4 worst-case.)
>  		 */
>  		for (b = a; c = 2*b + size, (d = c + size) < n;)
> -			b = cmp_func(base + c, base + d) >= 0 ? c : d;
> +			b = do_cmp(base + c, base + d, cmp_func, priv) >= 0 ? c : d;
>  		if (d == n)	/* Special case last leaf with no sibling */
>  			b = c;
>  
>  		/* Now backtrack from "b" to the correct location for "a" */
> -		while (b != a && cmp_func(base + a, base + b) >= 0)
> +		while (b != a && do_cmp(base + a, base + b, cmp_func, priv) >= 0)
>  			b = parent(b, lsbit, size);
>  		c = b;			/* Where "a" belongs */
>  		while (b != a) {	/* Shift it into place */
> @@ -252,4 +266,12 @@ void sort(void *base, size_t num, size_t size,
>  		}
>  	}
>  }
> +EXPORT_SYMBOL(sort_r);
> +
> +void sort(void *base, size_t num, size_t size,
> +	  int (*cmp_func)(const void *, const void *),
> +	  void (*swap_func)(void *, void *, int size))
> +{
> +	return sort_r(base, num, size, _CMP_WRAPPER, swap_func, cmp_func);
> +}
>  EXPORT_SYMBOL(sort);
