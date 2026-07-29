Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F2EDC53219
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Jul 2026 06:07:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nZm3xqQ41k17BCYQLKiZxubIXAIAsNkP2L9o97VfkGk=; b=Zn649rWwJ2Zv5v
	f0L1X21OXfm59J4DyzGSWw0uoAkSmfuv/waB0q1MEBGOdWsKj7u9Xg/yVSALLJH8FmJmZSyl6Rcnr
	zBWM+exqWjoT5bgd9N7fTb9XBnpWXyh/mSRjVYh+m3tH38gsdJ5Q3Fxe5molXH2elJcP1Djg46m8m
	RZESNvQcmG1xUQ1eCwEZywQAahtFXJRlYh4ZPQnSILiWP691BiOXznBgzPArcOFDTD9LUT5hKONPK
	TF+8JuPtFogZ9kaQIN5AKg6HcJ7nBi1aRpaOyJmCCEMt8n7UuyviTNAMWa99+0BTkYCkbMbIYbNdp
	8lWsPK2kEn63L8FmYgcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woxRw-00000006z6u-0rk9;
	Wed, 29 Jul 2026 06:07:28 +0000
Received: from mail-yw1-x1136.google.com ([2607:f8b0:4864:20::1136])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woxRt-00000006z5w-3Cpz
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Jul 2026 06:07:26 +0000
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-81f36179d72so9514697b3.2
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Jul 2026 23:07:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785305244; cv=none;
        d=google.com; s=arc-20260327;
        b=Hcgt8dtKVPJvVsadnzehtt1pwA1L8ioROdyl1by7X+0Pc3BVPLkB330CkZLz40ZVGe
         7yfqFOOdzCWQ2btLyDVICP2Sycbe4UYS3ev224O/rGd3Ju+sqHhFU6Hb6QTM7a7WGd6M
         bgZySoIaWiCel5kEavaPQX5sD/z1iWfx+95bEUrZXpai9ni2c3phGjRJpsPHOP3O9Vau
         TGILB5d0+laNS5n7RTrlcaQfou9JAFqNLgHtNVvL1x6y5FTGT5j34Cg9rhVUR0AS3uAK
         8QNq5pfQ1ehmEq3s+5qY1Iv8jexE9hZt3EkoRqAkDqJxCcGQx0NzQj480Ny93O+R7HLQ
         V9Ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=iScxJJqL6aRxzDugADjE+N0GIV5NkGLe6YmtBInYTFU=;
        fh=G/dFmojZ/7WWwclxTA1N/R/QEFlpNQmmj76BYaLcDBA=;
        b=AjAvo/ZMnkhn0zLOhHbU6rDjhrZ6KQsRHqdC/CmUmsZJH+gKN7gdYpdDAJY02an6q1
         lECQ6YcjqB/f8SqP9NuV2TyF6bHIyrYDeP0PJfkK6LWflhN/qHqzfPW4RCBiVgGjxjY/
         GuTKGjbZ1WKOc8Odq1QPB/PHo9nPwh5aUbUSUmRp8oX+v8w9jJQE/u8cOGduyHEgeKgn
         e86E/ObrcjxkxsToOGwEw3y7kY6xYjadgQPVHr2bmJLmi2kAtVdU/S3LeAXw9YarHa1W
         YQcPHXeteR/FhyJBztzZbH4u5FBgb/8ZukMsaAPkwkmGgCv/RXoTdldehy9ubvmo+VFR
         AQAw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785305244; x=1785910044; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=iScxJJqL6aRxzDugADjE+N0GIV5NkGLe6YmtBInYTFU=;
        b=qHT2p9OdOtqgBBDMuwWmfkprZBHDt5HwMtsESzm10i6Mjaz63ZWeEncrQJ0Bc6uDpU
         WKLegCIYMksMTlVbAbuVxCTtA/cwUiF+v8wksiyjdg1xOzv0xRlNy6PNXpLQ4TOsMAKj
         IlO9+HFVbTqI2L8eLzJvL/soIvlwJahqcejM6GE3UpWFg31ccQkOJVUwsK1vejqkX5EA
         3G2rLLhheH5o39VplamfF4KSfo0SntA+hpXa8jR4Bxb++DWlESf3uzpSvr74xSdibsF6
         usMuoVH/qVCoI8o7Hnviim1HktQqurQP0Hml0fJ1HflIn2eTFR12ft4AMQDRjhxMMXQk
         e1zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785305244; x=1785910044;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=iScxJJqL6aRxzDugADjE+N0GIV5NkGLe6YmtBInYTFU=;
        b=lFHzo0sT8TZkp501qo78a7loqwX3yaiaIv4OVxdsVkDdYYG5WMuX6LwwNDHidK1eUD
         jKmBiBKg08IiMsc7DVjrzkRtYN9m4p0Z5+PNNZtjhh/d4UgXHTgdfy7JfM+aLk7h8FNO
         opm11fzZS8Eb+rEbD8EwtWJWB66Hx2f+EOHPsjfW4p7/TEiMPWjICVyPkltk7zGAgJGX
         mX94ykuz09S41uwl9jrUjzchCDi4GYEhQWeFKUghMv2miabaZGWqBxXTNrsTAjEQXtIK
         co5ZQeKz5rgYPc4ezXChKN0BkVzgpcfreYxUluclvsPS/S3Fg3fidj7CW6cRbgcKJhEc
         QzgA==
X-Forwarded-Encrypted: i=1; AHgh+RpPvBga4QJN2kFGCoPuXdchg+gaOZtz1ZdEaUusMSliM6T9e8yrRo1QSetN88sQwlR9tzRf+yFoKFz6kR8Mgw==@lists.infradead.org
X-Gm-Message-State: AOJu0YypZe7tzhlJ/cXQU0d3T2M4kEarayzoWi6bnL5EA3jsOv1Fvdeh
	CI4Cv8pXJ8fO2nSjFB1qmLfwN5u2wzs7ET11PCCuLd8+WVAsLMOJY4NYThiKTO042C8YURDOe/c
	TVPgmlim3ZYNl6P25qUq7MHtg2IW/Cyw=
X-Gm-Gg: AR+sD11Xa7FyV0m2FvsIiTZFjBLCrglLu1W2FlHXG7GG+AEx6u7dGpo+zNyo46lnN0v
	5k5VYesp5qcAcKTSfkw3tqBA6Yay4uRTfj2Lhpj/N+lW4Trkw6CLuZb8Gv5oZqE2vz6LMEqz9n6
	y2yj0RoYWqzQYiggumUz/XpYQ3lEd3rjDtMtWChZHJ6FUADCVvors62Zp5dZKvoz4/NVTwVuZrx
	l9u61hWS2mqrneHQkMZDnZrLRfuVmELsSgMKUMl1O2TtzQ68Dqm5QCK5fPiBeqcMXMikYCJQnQI
	ioDm72he7y+GG+eaG52MEdqK0EXm8SoKABu8PfFBGHI7
X-Received: by 2002:a05:690c:6288:b0:81e:3e2c:6fea with SMTP id
 00721157ae682-81f992c052dmr26846517b3.70.1785305244310; Tue, 28 Jul 2026
 23:07:24 -0700 (PDT)
MIME-Version: 1.0
References: <20260727205602.1188008-1-gahing@gahingwoo.com>
 <CABjd4YwmznLERMx_DgfTeqXmOEZh=pcOjf+NYfkV069mETe-uQ@mail.gmail.com>
 <CAK2JjQVsJbC5wuLs1wFvose0S9ho6FDNPbhteveWOttE0prjeA@mail.gmail.com> <37c2162d-134d-48c5-92d8-3355306f15ec@lunn.ch>
In-Reply-To: <37c2162d-134d-48c5-92d8-3355306f15ec@lunn.ch>
From: Gavin Gao <attinagaoxu@gmail.com>
Date: Wed, 29 Jul 2026 14:07:12 +0800
X-Gm-Features: AUfX_mzFc5FibGLhOWxikG7Xcpuqj18wIU8NW_SBpEU5pYp2tsVN9ltxDi0C_Bc
Message-ID: <CAK2JjQVf=NMyzW5OThTnZrUGBevoL=EQW6WVLyCxkxCYWDQ6Dw@mail.gmail.com>
Subject: Re: [PATCH net-next v2] net: phy: motorcomm: enable the reference
 clock for YT8521 and YT8531
To: Andrew Lunn <andrew@lunn.ch>
Cc: Alexey Charkov <alchark@gmail.com>, Jiaxing Hu <gahing@gahingwoo.com>, Frank.Sae@motor-comm.com, 
	hkallweit1@gmail.com, linux@armlinux.org.uk, davem@davemloft.net, 
	edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, 
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
	maxime.chevallier@bootlin.com, heiko@sntech.de, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_230725_811467_0A8D0172 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gV2VkLCBKdWwgMjksIDIwMjYgYXQgNDo1NOKAr0FNIEFuZHJldyBMdW5uIDxhbmRyZXdAbHVu
bi5jaD4gd3JvdGU6Cj4KPiBQbGVhc2UgZG9uJ3QgdG9wIHBvc3QuCj4KPiBMb29rIGFyb3VuZCBh
dCBvdGhlciBkcml2ZXJzLiBJcyBpdCBnZW5lcmFsbHkgcHV0IGludG8gYSB0aW55IGhlbHBlciwK
PiBvciB1c2VkIGlubGluZT8KPgo+IE15IGd1dCBmZWVsaW5nIGZyb20gcmV2aWV3aW5nIGxvdHMg
b2YgZHJpdmVycyBpcyB0aGF0IGl0IGlzIGlubGluZS4KPgo+ICAgICBBbmRyZXcKPgo+IC0tLQo+
IHB3LWJvdDogY3IKCkhpIEFsZXhleSwKClNvcnJ5IGZvciB0aGUgdG9wIHBvc3RpbmcuCgpGYWly
IHBvaW50LiBJIGNoZWNrZWQgYSBmZXcgUEhZIGRyaXZlcnMgYW5kIHRoaXMga2luZCBvZiBvcHRp
b25hbCBjbG9jawpoYW5kbGluZyBpcyBvZnRlbiBvcGVuLWNvZGVkIGluIHByb2JlLiBJbmxpbmUg
aXMgZmluZSB3aXRoIG1lLgoKLS0gCkJlc3QgUmVnYXJkcywKR2F2aW4gR2FvCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
