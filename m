From: Doug Anderson <dianders@google.com>
Subject: Re: [PATCH v2 1/2] usb: dwc2: alloc dma aligned buffer for isoc split in
Date: Fri, 4 May 2018 08:58:04 -0700
Message-ID: <CAD=FV=V1gFsyG+PDp6xF2w+=t87vcoSNcXGvwVu_YchY4MyNAQ@mail.gmail.com>
References: <1525230288-6014-1-git-send-email-william.wu@rock-chips.com>
 <1525230288-6014-2-git-send-email-william.wu@rock-chips.com>
 <CAD=FV=UTjLbh+Qj8JcyGa5dMH8=hFurA2qyWpi9vCJkE1_ExRg@mail.gmail.com> <8ce56264-cdd1-1a12-c642-79224c65f639@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <8ce56264-cdd1-1a12-c642-79224c65f639@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: wlf <wulf@rock-chips.com>
Cc: William Wu <william.wu@rock-chips.com>, hminas@synopsys.com, felipe.balbi@linux.intel.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, LKML <linux-kernel@vger.kernel.org>, linux-usb@vger.kernel.org, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Frank Wang <frank.wang@rock-chips.com>, =?UTF-8?B?6buE5rab?= <huangtao@rock-chips.com>, "daniel.meng" <daniel.meng@rock-chips.com>, John Youn <John.Youn@synopsys.com>, =?UTF-8?B?546L5b6B5aKe?= <wzz@rock-chips.com>, zsq@rock-chips.com, Allen.Hsu@quantatw.com, Stan Tsui <StanTsui@aopen.com>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Wed, May 2, 2018 at 10:14 AM, wlf <wulf@rock-chips.com> wrote:
> It's a good way to allocate an extra 3 bytes in the original bounce buffe=
r
> for this unaligned
> issue=EF=BC=8C it's similar to the tailroom of sk_buff. However, just as =
you said,
> we'd better find
> the special cases where we need an oversized bounce buffer, otherwise=EF=
=BC=8Cwe
> need to allocate
> a bounce buffer for all of urbs.
>
> It's hard for me to know the special cases in the
> dwc2_alloc_dma_aligned_buffer(), because
> it's called from usb_submit_urb() in the device class driver, and I hardl=
y
> know the split state
> in this process, much less if the split transaction need aligned buffer. =
Do
> you have any idea?
>
> I suppose that we can't find the special cases where we need an oversized
> bounce buffer
> in the dwc2_alloc_dma_aligned_buffer(), and if we still want to re-use th=
e
> original bounce
> buffer with extra 3 bytes, then we need to allocate a  bounce buffer for =
all
> of urbs, and do
> unnecessary  data copy for these urbs  whose transfer_buffer were already
> aligned.  This
> may reduce the transmission rate of USB.
>
> Can we just pre-allocate an additional aligned buffer (the size is 200
> bytes) for split transaction
> in dwc2_map_urb_for_dma for all of urbs. And if we find the split
> transaction is unaligned=EF=BC=8C
> we can easily use the pre-allocated aligned buffer.

OK, so thinking about this more...

Previously things got really slow at interrupt time because we were
trying to allocate as much as 64K at interrupt time.  That wasn't so
great.  In your case, you're only allocating 200 bytes.  As I
understand things, allocating 200 bytes at interrupt time is probably
not a huge deal.

...so I guess it come down to a tradeoff here: is it worth eating 200
bytes for each URB to save an 200 byte allocation at interrupt time in
this one rare case.

I'd certainly welcome anyone's opinion here, but I'm going to go with
saying it's fine to allocate the 200 bytes at interrupt time (like
your patch does).  ...but, I _think_ you want to use
kmem_cache_create() to create a cache and then kmem_cache_zalloc().
Since all allocations are the same size and you want this to be fast,
I think using kmem_cache is good.



>>> +       /* For non-dword aligned buffers */
>>> +       if (hsotg->params.host_dma > 0 && qh->do_split &&
>>> +           chan->ep_is_in && (chan->xfer_dma & 0x3)) {
>>
>> So what happens if were unaligned (AKA (chan->xfer_dma & 0x3)) but
>> we're not doing split or it's not an IN EP?  Do we just fail then?
>>
>> I guess the rest of this patch only handles the "in" case and maybe
>> you expect that the problems will only come about for do_split, but it
>> still might be wise to at least print a warning in the other cases?
>> >From reading dwc2_hc_init_xfer() it seems like you could run into this
>> same problem in the "out" case?
>
> Actually, I only find non-dword aligned issue in the case of split in
> transaction.
> And I think that if we're not doing split or it's an OUT EP, we can alway=
s
> get aligned buffer
> in the current code. For non-split case, the dwc2_alloc_dma_aligned_buffe=
r()
> is enough. And for split out case, if the transaction is subdivided into
> multiple start-splits,
> each with a data payload of 188 bytes or less, so the DMA address is alwa=
ys
> aligned.

Can you at least print an error message if you end up with non-aligned
DMA in one of the other cases?


>>> DMA_FROM_DEVICE);
>>> +               memcpy(qtd->urb->buf + frame_desc->offset +
>>> +                      qtd->isoc_split_offset, chan->qh->dw_align_buf,
>>> len);
>>
>> Assuming I'm understanding this patch correctly, I think it would be
>> better to write:
>>
>>    memcpy(qtd->xfer_dma, chan->qh->dw_align_buf, len);
>
> Sorry, there's no "xfer_buf" in qtd, do you means the "chan->xfer_dma"? I=
f
> it's, I think we can't
> do memcpy from a transfer buffer to a DMA address. Maybe chan->xfer_buf i=
s
> more suitable,
> but it seems that the dwc2 driver doesn't update the chan->xfer_buf for i=
soc
> transfer with dma
> enabled in dwc2_hc_init_xfer().

Yes, I meant chan->xfer_dma.  Ah, right.  xfer_dma is a DMA address.

I guess you could in theory you could do:

memcpy(qtd->urb->buf + (chan->xfer_dma - urb->dma),
    chan->qh->dw_align_buf);

That at least avoids duplicating the math.  Maybe either do that, or
if you don't like it at least add a comment saying that the math needs
to match the math in dwc2_hc_init_xfer().


>> Then if you ever end up having to align a transfer other than a split
>> you won't be doing the wrong math.  As it is it's very non-obvious
>> that you're hardcoding the same formula that's in dwc2_hc_init_xfer()
>
> Actually, I'm hardcoding the same formula from the old code which has bee=
n
> ripped out
> in the commit 3bc04e28a030 ("usb: dwc2: host: Get aligned DMA in a more
> supported way").

Ah, got it.  Well, I think the old code was just hardcoding the same
formula in two places then.  ;-)


>>> -       if (qh->desc_list)
>>> +       if (qh->desc_list) {
>>>                  dwc2_hcd_qh_free_ddma(hsotg, qh);
>>> +       } else {
>>> +               /* kfree(NULL) is safe */
>>> +               kfree(qh->dw_align_buf);
>>> +               qh->dw_align_buf_dma =3D (dma_addr_t)0;
>>
>> Why assign qh->dw_align_buf_dma to 0?  The next thing you're doing is
>> kfree(qh).  If you want extra debugging, turn on slub_debug.
>
> I just copy the same code from the old code which has been ripped out in =
the
> commit 3bc04e28a030 ("usb: dwc2: host: Get aligned DMA in a more supporte=
d
> way").
> I really don't know why assign qh->dw_align_buf_dma to 0.

There's no reason.  Just remove it.


-Doug
