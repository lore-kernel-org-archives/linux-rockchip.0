Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB5B2606A326
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2026 09:42:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=jdbNzheG;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=R1aw/CJA
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=rgDZ5yLGo1IcYYAtDTPdDEwysPEia9OaGmTsJvyd+H0=; b=jdbNzheGQ7XKFuIzGdLkddGiR+
	kk41mkF0mKEX2Xw9mDVoWnK7CCYblpG2Pnz01nASH3s9aE+h/p7bzLRcqxUHBznMmBMQqkVz0h8vn
	4c56LCyrqqaJgZhAv3P+USIyv2lmjjyxfy6Cs6I3cTy1sc6gzvpG/sig6RASIaatxJ6fhw65aSrjE
	9H5YFLPcpGCfUKY4Kk8CkQkn5iSMIH3CMaULBffCBRO5mItKkZFSfoffemFJf5dRLNpoRAJmcLf5X
	dOYquBDUCp3VTgBPMOvHRiFk2YUG4qyIO/k3j2wHciQBLoIoTlQqrgYZ6NTjEILZoF4j97n3d1SUJ
	B1AR+upQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOB2U-00000001mpA-1y6e;
	Tue, 03 Nov 2026 09:42:46 +0000
Received: from mail-qv1-xf2c.google.com ([2607:f8b0:4864:20::f2c])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOB2S-00000001moq-0R0z
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Nov 2026 09:42:45 +0000
Received: by mail-qv1-xf2c.google.com with SMTP id 6a1803df08f44-91c73c63116so47779706d6.2
        for <linux-rockchip@lists.infradead.org>; Tue, 03 Nov 2026 01:42:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1793698962; cv=none;
        d=google.com; s=arc-20260327;
        b=HZPYiucMt4gsImVBGFf0KlzOQUdhRn6z+hghgdGZKTEEw7QPW4uSRpTb3yAz70Brw6
         3YPQ3shybW0A5RjcZAmAGphX4W3nE8nQXjHQ9s9XwwLEdbHBZh2qLK2Sjq7GS82VX9xT
         zQMlS/bxZQlIzkedGrEq5TsdBvF4QwXXju3LrGgWO3NZzK1i4/3KKyflp+aNc3vNARsj
         3U86e6H1d9Ob3myuTG1EdFQj3wlBlvB9ekKlXc8YwAqrRrK4mAZRjGv8WQg6oniDkVT+
         yFsPIojn+KlMFHhyfsHsT2LT9DGgsEFtRp588L0/ftoOJ/azNoOZZFGoT63XajcJjUx8
         oe1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ygM3A8Mk8yB+Y76R7qnHkMSg5yzfIWiCokbuBDo68OY=;
        fh=zTYYvnr7G96JuqT+Jekg5J4cmXSNrZv7kAbbCU/RBZ4=;
        b=bMrHczIFRUqHGjOZnTzSEqQTrfWF+mKk6ZUBHH5lUww27ce+WehB1ASMN0EbEU+crj
         jygqk0Za8LThivYukPlmUuZ9R/H6nIQGjg1cLzMDrNMTYcYOUcRteu/IOBNATYN9FC/8
         RCiX4Ay64j1cfb4yx6y7MRincbuKPeGUmwXac9q3P7bPNhwpP4FKdynTQUSKLOlENx6F
         XBxQL2+ff5g+Y9YebYxiLajJr1ZYK0O7hs5GtqefeDetLa9fM9q37pQOD3bbMM9gHZtc
         SWXvT3hFkrMISmg2KNO1TQPt5jClkrFsuou0l+Gemv1V/j9C+L1Obcphzy0BAXGScTbJ
         y+wg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793698962; x=1794303762; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ygM3A8Mk8yB+Y76R7qnHkMSg5yzfIWiCokbuBDo68OY=;
        b=R1aw/CJAkUFm65GsHSpeRxiNNRQWNDvuCknCB+P75V0eKHdLF3ie4t/jX8zvtDAXcx
         Mu7TYY6OWp23rjMkJTytJ3nf2r8QVyn2YgY5S+/+CmbAg/+ibCANLczxZ6XqoJyHb3sz
         67DbpdLdnaPcCRxFaF+PsmYxqlPU0eKNk/ffBk5RkDSWDJX+/jN8zdlP3ptGAdmVe7Nr
         JxAX+6uPy1NnLZySStLnan/l2k99jJS3y2DSxdht33mxlAw6BEx0kYAtllN2I7Qupucz
         S8vvA515wouNlny6A4fOSx7bY/u2uw82Qj4V5i3Ya7n3KgK1/WQMY8dC1IcA6X6wQBRN
         LT6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793698962; x=1794303762;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=ygM3A8Mk8yB+Y76R7qnHkMSg5yzfIWiCokbuBDo68OY=;
        b=v1XkByJ+QKdzZWDP6H0seECFy5TTm5Fp2YHI857gTGj3DWWNQf7ajeJy14AMSkZgeJ
         u4x6mrn1Ch4hZrmPsZwqSHNzo7VYpBfkkvW4DLqg7lmisflx40YewZm9328LZXVKQQJG
         ndIr69olK5xLorOWSTcqvzpkhhxMjiwpjOzALzIF+A/qCrcv0c59H63OD4jyuk/1dIH0
         EPA9O/v4Lg6MAq+y6L345o6i/hjiG28syOVKIBuQMn35Lct2p0ffYtLc9m+78lvqlGvW
         pEJ0M8c+85WkiA6AERndqtqIhFJ3E+ZOVOoW4BppNmGSW8GiQkcX+kKp/vVlpIGHnk3Q
         MW6w==
X-Forwarded-Encrypted: i=1; AKwUvBwc8ijzGSpcYstFo2S9616WQ3en/NW0a2sFMLFGiDMO8HKYB7lvCTzMZeiPmeDiNhDdmz4G8XyP3aogq4on1Q==@lists.infradead.org
X-Gm-Message-State: APuU4Z+mYVt9vsLtM0QvqaP8NARzCKCmiyL49r3+p/XkvdWKVjFMtorw
	cmxn+VZMVa+Vtx7wR2MVxv2lliwQZSdLfeKcOih4rViK+gc4nrw0TSgHlwO2YlRqzjFvYCE4zKU
	Aa9BgYFa0450ZM8k8sFoFc0/43ukcX0A=
X-Gm-Gg: AYBFou0L+E+2XarG63Xb9J1tDQfj+ZpgbgVimAsNCM3fv9DtzXfN2EI2ugJCDpUjEkx
	8PHKr9Ft4rsTw3QVw1gY37OZOeM9ev1gPoMXjSIQQWxgPSTGGt0FzQFIddCbAnCBOyRegjaRww/
	uGU5EDT4j7Pu4XAi69987ci3me622/55jHJeLZ/NN8Dx+Uz0THvcsbU/O5rqc7Se1EQT4ERC2XV
	ytM20uxWP1xdw8CzOSYQGPIoXlKOg9vX8F/mDzGMJxdbn3c8OEEaa9nqIFcVps116yCx4I9r/kA
	6Tg68w158eWPhqk1zc3OTSfVJRTYXyNXPmEKphQT4WhKSW8VouIY8VzAP7ZD6eayF9XkaZ5p57S
	Q8q+TrWIgROQuxeugObZ3zesJfMzne0fpp5PdLc5h+ItV23ANonhT3IzKkmEEKDdOWtD9H3TNhY
	6VqQWcyKnRayL9r4WwYm+qwPuqjIYgYonXnIsSl2+hNgFQZyifOooF4gUuuktEaDHNKXL3MybDc
	ciyia4+PqU2aKwzCd3g/5u6UVnMijDc3WI=
X-Received: by 2002:a05:6214:509c:b0:91c:63a1:1432 with SMTP id
 6a1803df08f44-91ca4a0c523mr207579736d6.6.1793698962464; Tue, 03 Nov 2026
 01:42:42 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261103082732.18483-1-frank.wang@rock-chips.com>
In-Reply-To: <20261103082732.18483-1-frank.wang@rock-chips.com>
From: Peter Robinson <pbrobinson@gmail.com>
Date: Tue, 3 Nov 2026 09:42:29 +0000
X-Gm-Features: AclHuK_0bo6xw7F4NTs3x8_Fx5_oUJweGaSyYZQZgiX4GM4ADEgOw4anhfzXBkQ
Message-ID: <CALeDE9PLaF7rB2RXn9G6ipWW+J5dentCtyNLgdwTUywgiTnooQ@mail.gmail.com>
Subject: Re: [PATCH] usb: dwc3: fix abort on invalid ref clock rate from clk_get_rate()
To: Frank Wang <frank.wang@rock-chips.com>
Cc: marex@denx.de, trini@konsulko.com, mkorpershoek@kernel.org, 
	balaji.selvanathan@oss.qualcomm.com, macromorgan@hotmail.com, 
	sean.anderson@linux.dev, heiko@sntech.de, u-boot@lists.denx.de, 
	linux-rockchip@lists.infradead.org, william.wu@rock-chips.com, 
	chenjh@rock-chips.com, wmc@rock-chips.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_014244_171576_FE6B0208 
X-CRM114-Status: GOOD (  20.37  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Frank,

There's a big rebase to sync with upstream Linux driver [1][2], I
think it's due to land shortly, does the issue still occur with that?

It would be good to get the rockchips SoCs with the dwc3 controller
tested with that rebase.

Peter

[1] https://lists.u-boot-project.org/pipermail/u-boot/2026-October/637669.html
[2] https://lists.u-boot-project.org/pipermail/u-boot/2026-October/637734.html

On Tue, 3 Nov 2026 at 08:28, Frank Wang <frank.wang@rock-chips.com> wrote:
>
> On 32-bit platforms, "usb start" aborted with
> "### ERROR ### Please RESET the board ###". If the clock driver
> does not implement the "ref" clock, clk_get_rate() returns
> -ENOENT, which dwc3_ref_clk_period() treated as a valid rate.
> period became 0 and the fladj calculation divided by zero; the
> software 64-bit division on 32-bit ARM calls the
> division-by-zero handler __div0() and hangs (64-bit platforms
> survive silently since UDIV returns 0).
>
> Skip REFCLKPER/GFLADJ programming when clk_get_rate() returns an
> error code, as is already done for rate == 0.
>
> Fixes: 6bae0eb5b8bd ("usb: dwc3: Calculate REFCLKPER based on reference clock")
> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
> ---
>  drivers/usb/dwc3/core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
> index be198041f08..9a84ec6a60e 100644
> --- a/drivers/usb/dwc3/core.c
> +++ b/drivers/usb/dwc3/core.c
> @@ -151,7 +151,7 @@ static void dwc3_ref_clk_period(struct dwc3 *dwc)
>
>         if (dwc->ref_clk) {
>                 rate = clk_get_rate(dwc->ref_clk);
> -               if (!rate)
> +               if (!rate || IS_ERR_VALUE(rate))
>                         return;
>                 period = NSEC_PER_SEC / rate;
>         } else {
> --
> 2.17.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
