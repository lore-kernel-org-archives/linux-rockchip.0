From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Subject: Re: [PATCH 1/9] lib/sort.c: implement sort() variant taking context
 argument
Date: Fri, 26 Jul 2019 08:59:11 +0200
Message-ID: <66755c09-53f1-24e9-0160-6bcc78c4d2e1@rasmusvillemoes.dk>
References: <20190619121540.29320-1-boris.brezillon@collabora.com>
 <20190619121540.29320-2-boris.brezillon@collabora.com>
 <20190725170547.a8a357dd76cc586f475b782d@linux-foundation.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190725170547.a8a357dd76cc586f475b782d@linux-foundation.org>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Andrew Morton <akpm@linux-foundation.org>, Boris Brezillon <boris.brezillon@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil <hans.verkuil@cisco.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Sakari Ailus <sakari.ailus@iki.fi>, linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>, Nicolas Dufresne <nicolas@ndufresne.ca>, kernel@collabora.com, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Ezequiel Garcia <ezequiel@collabora.com>, Jonas Karlman <jonas@kwiboo.se>, linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>
List-Id: linux-rockchip.vger.kernel.org

On 26/07/2019 02.05, Andrew Morton wrote:
> On Wed, 19 Jun 2019 14:15:32 +0200 Boris Brezillon <boris.brezillon@collabora.com> wrote:
> 
>> From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
>>
>> Our list_sort() utility has always supported a context argument that
>> is passed through to the comparison routine. Now there's a use case
>> for the similar thing for sort().
>>
>> This implements sort_r by simply extending the existing sort function
>> in the obvious way. To avoid code duplication, we want to implement
>> sort() in terms of sort_r(). The naive way to do that is
>>
>> static int cmp_wrapper(const void *a, const void *b, const void *ctx)
>> {
>>   int (*real_cmp)(const void*, const void*) = ctx;
>>   return real_cmp(a, b);
>> }
>>
>> sort(..., cmp) { sort_r(..., cmp_wrapper, cmp) }
>>
>> but this would do two indirect calls for each comparison. Instead, do
>> as is done for the default swap functions - that only adds a cost of a
>> single easily predicted branch to each comparison call.
>>
>> Aside from introducing support for the context argument, this also
>> serves as preparation for patches that will eliminate the indirect
>> comparison calls in common cases.
> 
> Acked-by: Andrew Morton <akpm@linux-foundation.org>
> 
>> --- a/lib/sort.c
>> +++ b/lib/sort.c
>> @@ -144,6 +144,18 @@ static void do_swap(void *a, void *b, size_t size, swap_func_t swap_func)
>>  		swap_func(a, b, (int)size);
>>  }
>>  
>> +typedef int (*cmp_func_t)(const void *, const void *);
>> +typedef int (*cmp_r_func_t)(const void *, const void *, const void *);
>> +#define _CMP_WRAPPER ((cmp_r_func_t)0L)
> 
> Although I can't say I'm a fan of _CMP_WRAPPER.  I don't understand
> what the name means.  Why not simply open-code NULL in the two sites?

That's the preparation part. Once I find time to tie up the loose ends,
there'll be a

  sort_by_key(base, num, swap, key)

where base must be a pointer to (array of) struct foobar, and key is the
name of an u32 or u64 (more can be added) member. Internally, that will
work by calling sort_r with a sentinel _CMP_SORT_U32 (or _CMP_SORT_U64,
...) as cmp function and offsetof(typeof(*base), key) as the priv argument.

In do_cmp, we then check whether the cmp function is a small
non-negative integer and then do the appropriate comparison directly
instead of doing an indirect call.

And this infrastructure will be shared with list_sort which will grow a
similar list_sort_by_key(). I think the actual value of _CMP_WRAPPER
will change to simplify that part, so for that reason alone I won't
hard-code NULL.


>> +static int do_cmp(const void *a, const void *b,
>> +		  cmp_r_func_t cmp, const void *priv)
>> +{
>> +	if (cmp == _CMP_WRAPPER)
>> +		return ((cmp_func_t)(priv))(a, b);
>> +	return cmp(a, b, priv);
>> +}
>> +

i.e., this becomes something like

if ((unsigned long)cmp <= ...) {
  if (cmp == CMP_WRAPPER)
     // called from sort(), priv is the original cmp_func pointer
     return ((cmp_func_t)(priv))(a, b);
  // must be called from sort_by_key, priv is the offset in each struct
  long offset = (long)priv;
  a += offset;
  b += offset;
  if (cmp == CMP_U32)
    return *(u32*)a > *(u32*)b;
  if (cmp == CMP_u64)
    return *(u64*)a > *(u64*)b;
  WARN_ONCE() // should be eliminated by smart enough compiler
  return 0;
}
return cmp(a, b, priv);

>>  /**
>>   * parent - given the offset of the child, find the offset of the parent.
>>   * @i: the offset of the heap element whose parent is sought.  Non-zero.
>> @@ -171,12 +183,13 @@ static size_t parent(size_t i, unsigned int lsbit, size_t size)
>>  }
>>  
>>  /**
>> - * sort - sort an array of elements
>> + * sort_r - sort an array of elements
>>   * @base: pointer to data to sort
>>   * @num: number of elements
>>   * @size: size of each element
>>   * @cmp_func: pointer to comparison function
>>   * @swap_func: pointer to swap function or NULL
>> + * @priv: third argument passed to comparison function
> 
> Passing priv==NULLis part of the interface and should be documented?

No, to sort_r() as a public function @priv is completely opaque, and the
user can pass anything he likes. Only when sort_r() is called
"internally" with a sentinel value of cmp_func (e.g. from sort() or
sort_by_key()) does the priv argument have any meaning, but that's
implementation details that should absolutely not be documented.

Rasmus
