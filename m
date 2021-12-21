Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A1EDC4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Dec 2021 08:48:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sj6+9N4Tth+y9QAQ6IrE8mbexWXicVQeOm3zj5jz1cc=; b=MI7mAKEqnme22n
	xeS6LfXs2hn6uGrXMxOusgLgBSby6j/JxhDxWMCaLWOH0sARjFRYz2yIl5vgI2Dw+9nbvyqRGPjtv
	FziMYixqlhfETVtrIpafgmdApEOJ1mUVd+YWgSdRzRLZMgWzHFx6hQ7OZmwMFl2SLmI2tnKFL/du7
	v1i9EvQjrlki6IKQZsiZCbYt1/29+9KMK1Uyz+v5/5dMjoFARMaGHa5pDrvDZYHc5OsEcbMNDD3YP
	mt8XqYsKWIdi+UpD4+li+x8ukCU5w7SwNWlqwwXUp/cSHyBRN2vgA+a/JUm1ryFkT3VmvwF4ldrj1
	1NqcQ9IN5Ka2/TvkV8Kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mzapH-005ySI-Cb; Tue, 21 Dec 2021 08:48:51 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mzapE-005yQI-Vv
 for linux-rockchip@lists.infradead.org; Tue, 21 Dec 2021 08:48:50 +0000
Received: by mail-wm1-x32e.google.com with SMTP id
 n14-20020a7bcbce000000b00332f4abf43fso785339wmi.0
 for <linux-rockchip@lists.infradead.org>; Tue, 21 Dec 2021 00:48:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=1i5pKI1yaREcKWwm6ZJnOKOfClamYbFLkl1l05ao+P8=;
 b=HQm25Al+ByvO5NoxVLT6E2bOaIW00vE1JmEXCieAXBxovaFIyAYZfOTy/dfzM8wCor
 2LzCgJRBDePMbyMT7vJh1HejDv+didIEK83TpaMo8K1PMHNmNSO/zsc/C3+iXMyqSdi5
 862caE7jCLOYHd8d0UvKgyOvqQH3siuYAmAD7nUVzEhmpnqpTSHf0E5DTB8VcwlZT8cK
 XKEQyhdc1Szz+LjctphbTSUyyUyXdP94E94SL+75PejtPoSOU3gP9SLjNnL4hr3N2xDD
 hS/+zFa307qcAJhjwZLgSr7jh/9b5mdLHRnqIY4SbTBtHsi14frXjshWNfWMRZ6mj2cJ
 gAIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=1i5pKI1yaREcKWwm6ZJnOKOfClamYbFLkl1l05ao+P8=;
 b=V2fhwGXrRPPbXC0977a5p4zqDwkXldDskSS42/uQMZLeGbHZMbEAEqN7onhcOseV//
 Yvhma4nYIqC64nGSsKXECmUquUZG2gDXB6UERkagE8ZPJ559EO52+5H7dTn6HLm5UXJr
 rRnY7TG6xQH2zRfqW4I6QN0zzaHGaSX3U8G/rDNq8pQ0PMzjD+3nFQjxfLbFGiPyiNFi
 dDFrW7ToyYznrxj0JNnOYqFna6+FQ4iyIadFcNVVj9MBR5mOJdAdBN/EEq/XVq7wh38a
 hBbkPCQiHNMGw3hjHuSuojZpchL5RpwYYI8xRiKTRwSCXB8Kr+83H2eSrZl5DPeo76xG
 YhJQ==
X-Gm-Message-State: AOAM531uHCVMCmaBexyBWfe4MU/nCO1J0mwtezORhiUTV7UeGfga8v9A
 +03TWb2wn5aspyE/oYrVjwKz1A==
X-Google-Smtp-Source: ABdhPJxvds/JbvO7IudFfvfu5aJ1k1xE1AzlajsT7HSscMA4YfLFPB7yjLj0mUO3zC46G30PkUhW1A==
X-Received: by 2002:a1c:1b8c:: with SMTP id b134mr1700891wmb.44.1640076525242; 
 Tue, 21 Dec 2021 00:48:45 -0800 (PST)
Received: from google.com ([2.31.167.18])
 by smtp.gmail.com with ESMTPSA id n4sm18317859wrc.1.2021.12.21.00.48.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Dec 2021 00:48:44 -0800 (PST)
Date: Tue, 21 Dec 2021 08:48:43 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Frank Wunderlich <frank-w@public-files.de>
Cc: Peter Geis <pgwipeout@gmail.com>, Robin Murphy <robin.murphy@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Dmitry Osipenko <digetx@gmail.com>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] mfd: rk808: add reboot support to rk808.c
Message-ID: <YcGU6pQqfEPBqjrO@google.com>
References: <20211220144654.926112-1-pgwipeout@gmail.com>
 <trinity-c54ecce4-7a39-4143-b136-f53c9b40ffd1-1640018026851@3c-app-gmx-bap45>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <trinity-c54ecce4-7a39-4143-b136-f53c9b40ffd1-1640018026851@3c-app-gmx-bap45>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211221_004849_117861_ECDBB3A3 
X-CRM114-Status: GOOD (  10.95  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

T24gTW9uLCAyMCBEZWMgMjAyMSwgRnJhbmsgV3VuZGVybGljaCB3cm90ZToKCj4gSGkKPiAKPiA+
IEdlc2VuZGV0OiBNb250YWcsIDIwLiBEZXplbWJlciAyMDIxIHVtIDE1OjQ2IFVocgo+ID4gVm9u
OiAiUGV0ZXIgR2VpcyIgPHBnd2lwZW91dEBnbWFpbC5jb20+Cj4gPiBAQCAtNzQ5LDYgKzc5MSw5
IEBAIHN0YXRpYyBpbnQgcms4MDhfcmVtb3ZlKHN0cnVjdCBpMmNfY2xpZW50ICpjbGllbnQpCj4g
PiAgCWlmIChwbV9wb3dlcl9vZmYgPT0gcms4MDhfcG1fcG93ZXJfb2ZmKQo+ID4gIAkJcG1fcG93
ZXJfb2ZmID0gTlVMTDsKPiA+Cj4gPiArCWlmIChvZl9wcm9wZXJ0eV9yZWFkX2Jvb2wobnAsICJy
b2NrY2hpcCxzeXN0ZW0tcG93ZXItY29udHJvbGxlciIpKQo+ID4gKwkJdW5yZWdpc3Rlcl9yZXN0
YXJ0X2hhbmRsZXIoJnJrODA4X3Jlc3RhcnRfaGFuZGxlcik7Cj4gPiArCj4gPiAgCXJldHVybiAw
Owo+ID4gIH0KPiAKPiB0aGlzIGNoYW5nZSBtaXNzZXMgYSBkZWNsYXJhdGlvbgo+IAo+IHN0cnVj
dCBkZXZpY2Vfbm9kZSAqbnAgPSBjbGllbnQtPmRldi5vZl9ub2RlOwoKSG93IGRpZCB0aGlzIGNv
bXBpbGUgd2hlbiB5b3UgdGVzdGVkIGl0PwoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpTZW5p
b3IgVGVjaG5pY2FsIExlYWQgLSBEZXZlbG9wZXIgU2VydmljZXMKTGluYXJvLm9yZyDilIIgT3Bl
biBzb3VyY2Ugc29mdHdhcmUgZm9yIEFybSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwg
VHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
