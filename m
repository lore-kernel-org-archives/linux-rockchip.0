Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3BBAC83F1B
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Jul 2025 09:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hOf5x1GnNlvr+Q6z+toBS50PF0oysYxYMug6dqRAseY=; b=cqHtX+krk2LSm1
	MD946JOxirpziK7nNRi0jkHNsG5MQKT9jDkFurIJFEGGb23fCUdx4p9fcnfV4eF9tOpEsm5ZZSp+P
	NMpbQ5vs+rAbsq2mzntvRrpODddYDGl8x9v7IQa++tqxIhWvUlwz8HMvFUAmiEWboBij6Q+lYHD1S
	8zHJ4kq0m9Ux0E2Rdj83OOoIEryTGIGqSyByGBHPw1aJ7V+hqpqKWaDXGER8b+GbarbQXfioWeXIF
	asq+Y9yV71woohBGrA9Qpyx97B5ySHVYF8/sFCivZHXqI1Ssd6goRkH+DS23+LCBGVNrygqr7IQZd
	9sypongXUSEq1W00DZ+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucKiW-00000009hjQ-40tp;
	Thu, 17 Jul 2025 09:15:52 +0000
Received: from mail-qt1-x82d.google.com ([2607:f8b0:4864:20::82d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucKGa-00000009bfR-1U5d;
	Thu, 17 Jul 2025 08:47:01 +0000
Received: by mail-qt1-x82d.google.com with SMTP id d75a77b69052e-4ab63f8fb91so6825811cf.0;
        Thu, 17 Jul 2025 01:47:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752742019; x=1753346819; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SoZi3uH4bM8ut3s23CSSIKzUfpDb/RYJxJSCVL7F3f4=;
        b=Zf4nl+7+ziVJuHaO6upliQgbt4MIchRbdmogn8wiqIbClZUNW6OYK5Z+lp5KuquxS8
         7me6x0X9RrrdVxIdknp+oPpwY+Irm/rFVpYDMKRn36oRW78GkAlwprKALEVysdyQ72mq
         lC2MUoyhIbIcBtWlnzx0iTsFj7p7ehIo53YmEqfTH7F2gD25l0zj6DyaVOyDwQH0CQbA
         tli9wajuNNbSMRX+ezTpRPJI+NvTmjI9bK57Chh3ttwlRtwBI3tHMuGkp06wccppSRCK
         WFoTp+3C8/JAroMiVqRE2smvue1yiRSUEhjUCdKXDWNyqNCn3rR0cX1lNP0V33ZB6HvL
         rbbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752742019; x=1753346819;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SoZi3uH4bM8ut3s23CSSIKzUfpDb/RYJxJSCVL7F3f4=;
        b=ao7FJ/YeRmEA1WJCc1ILFKY1z9Z//Xfooz00f0saNhIdmd9U8QLOJN1de/mdw4l50f
         fPa+r2arIQk8TDGwg2he6o1bfVng1zOxPlX8zM+91YuBCaJmM0Z2+aFtdi8Zx6VKC+w/
         PI2EnjO9k0G2IJ2jJbV2WvZW7Knzdkyoim+T5ZpO/TxIIFR2FnREQexEzazNB5+2abDS
         EZGWVuLqWERnqObgFOONecQlylMVfHCNuMQc1jI1bv6mhUR3xZFyinikwz37bM9BP+RZ
         P8Za7HYY27G7YwBFg/b4GIMFbruqYI6KHs4HEuOV+bsQ4mrc3iFH+lHt/naKdUCq/Q/C
         UQ7A==
X-Forwarded-Encrypted: i=1; AJvYcCV+8+olZPIGIq1LwQhMuc3Ef1ioC6vMGUpOe/ed6pq7mxw5IdHdGo9UObtp0IkWu5xUFpGhnNugxe6ZIEH0Xdup@lists.infradead.org, AJvYcCV0iQL300KsV1honVvyLmJx0A3W8SQ5/Yrc0AqLWEhRuPqIpt3s33Ceipu9nrvntVLZrgktgrPZLiXlJzYu9k0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw56qcr1UrED5hvoj5+SVgQ9+v6TxsVw7VRKQrQDoOkizQO42ZY
	xhszI1rUqIZtmUtPe7Np6rvnmDbIhFS4RGAfzMaXxNz+nypMgHNarMT6Nz9Rv/NCKYTCdjBDFJ1
	rZgfSfqZ7gAIycgfUFwVKOvukfaUVQIU=
X-Gm-Gg: ASbGnctaEnpMdDJv/VFRy0KdkFz9fFs9ZPf686qtJsuQIGhskza+a9m+7zdci8mVah2
	tiaHf6Fc+iEuD0ooRNmSL3qHrrvN9ZtaZtHNLZW+SuwAMODjpifQDlWp/9QbgqTm92U9rqm0YKs
	OpZrVScuKf/vuJ/g2c2CyHEX6Vtnsl0vvZ6sFYGbnhwU5AghHubspsrDHlgFEVcM1mWAT+P/Ox1
	A+pKFjOxULHEMs7
X-Google-Smtp-Source: AGHT+IHjj5vn0+lqcDlxTyECjf51uWo+wHz/e3GDdA4Lfz1XnPAokoHWuCf3MPYFpyI+USr4C4GDng9B+wsuijb5spQ=
X-Received: by 2002:a05:622a:228b:b0:4a5:912a:7c64 with SMTP id
 d75a77b69052e-4ab93d49434mr62145001cf.30.1752742019019; Thu, 17 Jul 2025
 01:46:59 -0700 (PDT)
MIME-Version: 1.0
References: <b6f8f705-f661-46cf-9dda-6f18f8658622@kwiboo.se> <20250717070006.192765-1-amadeus@jmu.edu.cn>
In-Reply-To: <20250717070006.192765-1-amadeus@jmu.edu.cn>
From: Alexey Charkov <alchark@gmail.com>
Date: Thu, 17 Jul 2025 12:46:47 +0400
X-Gm-Features: Ac12FXzqkgYPLwPzfI0Wfzx3xJg_aHq911YS94XX9w26rk3khvCHNvT0xMmUc6s
Message-ID: <CABjd4Yxz=mrNpqgnHSgD0tr4ALH3YW9MvLULES568yHNFiPB_w@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] arm64: dts: rockchip: rk3528: Add CPU frequency
 scaling support
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: jonas@kwiboo.se, conor+dt@kernel.org, devicetree@vger.kernel.org, 
	heiko@sntech.de, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	ziyao@disroot.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250717_014700_390106_27150243 
X-CRM114-Status: GOOD (  16.31  )
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

T24gVGh1LCBKdWwgMTcsIDIwMjUgYXQgMTE6MDHigK9BTSBDaHVrdW4gUGFuIDxhbWFkZXVzQGpt
dS5lZHUuY24+IHdyb3RlOgo+Cj4gSGkgSm9uYXMsCj4KPiA+IE9uZSBwb3NzaWJsZSBkaWZmZXJl
bmNlIGhlcmUgaXMgdGhhdCB0aGUgYWN0dWFsIENQVSByYXRlIGlzIGNvbnRyb2xsZWQKPiA+IGJ5
IGEgUFZUUExMIHdoZXJlIFRGLUEgd2lsbCBjb25maWd1cmUgYSBvc2MgcmluZy1sZW5ndGggYmFz
ZWQgb24gdGhlCj4gPiByZXF1ZXN0ZWQgcmF0ZSBhbmQgTGludXggb25seSBjb25maWd1cmUgdGhl
IHJlZ3VsYXRvciB2b2x0YWdlLgo+ID4KPiA+IEkgaGF2ZSBubyBpZGVhIGlmIHRoZSBjb25maWd1
cmF0aW9uIG1hZGUgYnkgVEYtQSB3aWxsIGhhdmUgYW55IGFmZmVjdCBvbgo+ID4gcG93ZXIgdXNh
Z2UsIGJ1dCBJIHN1Z2dlc3Qgd2Uga2VlcCBhbGwgb3BwIGhlcmUgYmVjYXVzZSBib3RoIFRGLUEg
YW5kCj4gPiBMaW51eCBpcyBpbnZvbHZlZCBpbiBjb25maWd1cmluZyB0aGUgQ1BVIHJhdGUuCj4g
Pgo+ID4gVGhlIG1lYXN1cmVkIHJhdGUgY2FuIHR5cGljYWxseSBiZSByZWFkIGZyb20gYSBQVlRQ
TEwgc3RhdHVzIHJlZywgaXQKPiA+IHdpbGwgYmUgZGlmZmVyZW50IGRlcGVuZGluZyBvbiB0aGUg
cmluZy1sZW5ndGgsIHZvbHRhZ2UgYW5kIHNpbGljb24KPiA+IHF1YWxpdHkgZm9yIHRoZSByYXRl
cyA+PSA4MTYgTUh6Lgo+Cj4gQWxleGV5IHN1Z2dlc3RlZCB0aGF0IHdlIHJlbW92ZSA0MDhNSHos
IDYwME1IeiBhbmQgODE2TUh6IGZyb20gdGhlCj4gb3BwLXRhYmxlLiBEbyB5b3UgdGhpbmsgaXQg
aXMgYWNjZXB0YWJsZSB0byB1c2UgODUwbVYgZm9yIDEwMDhNSHo/CgpCdXQgd2h5IDg1MCBtVj8g
VmVuZG9yIC5kdHNpIFsxXSBpbXBsaWVzIHRoYXQgY2hpcHMgd2l0aCBsZWFrYWdlCnZhbHVlcyBv
ZiBMMC4uTDQgbWlnaHQgYmUgdW5zdGFibGUgYXQgdGhpcyBmcmVxdWVuY3kgd2l0aCBhIDg1MCBt
VgpzdXBwbHkgYW5kIG5lZWQgODc1IG1WIGluc3RlYWQuCgpBcyBsb25nIGFzIHdlIGRvbid0IHJl
YWQgb3V0IE9UUCBsZWFrYWdlIHZhbHVlcywgd2Ugc2hvdWxkIHBpY2sgYQp2b2x0YWdlIGZvciBl
YWNoIE9QUCB0aGF0IGlzIHN1ZmZpY2llbnQgZm9yIGFsbCBwb3NzaWJsZSBjaGlwCmNoYXJhY3Rl
cmlzdGljcywgbWVhbmluZyB0aGUgbWF4aW11bSBvZiBhbGwgb3BwLW1pY3Jvdm9sdCogZ2l2ZW4g
aW4KZWFjaCBPUFAuIFRoaXMgd2lsbCByZXN1bHQgaW4gaGlnaGVyIC1MKiBjaGlwcyBidXJuaW5n
IG1vcmUgcG93ZXIgdGhhbgp0aGV5IGhhdmUgdG8sIGJ1dCBhdCBsZWFzdCB0aGV5IHdpbGwgYmUg
c3RhYmxlLgoKWzFdIGh0dHBzOi8vZ2l0aHViLmNvbS9yb2NrY2hpcC1saW51eC9rZXJuZWwvYmxv
Yi83OTJhN2Q0MjczYTU5ZTgwZGFmY2E0OGJhMTE0MzhmNDNhNmQ4YmRhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszNTI4LmR0c2kjTDI2OAoKQmVzdCByZWdhcmRzLApBbGV4ZXkKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
