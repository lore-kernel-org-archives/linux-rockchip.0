Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00369C369CB
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Apr 2025 16:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VqV9FbMoIqgdbdZwJv18tCX3A04DnadJukd6iUyq/iY=; b=X4ND1aoEu6rLJ2
	Z8tA+b7m1tJ44mttFi0m0wx/UhhAG0mRbCt6H6ZTAxqIidVq89mmMhPrAo9EuS2ES9blM+ooU5o4b
	OC8Y5orG1GUS0tKQw6mnTA4kmL2QgfBAQPUDk2giXP1NTWuCZIHhr4cjcsPxJLxcUDhTmNg2fD7jp
	6sEYfnPrILBezmpu3fc8Uwsd1OfvaTMkjtJJgCcI0LDBU6z24k0m8AwBl/y9jBDRWLmvxXqmDqsEB
	t3pDFh4DPRbWM0ufznqEqX8viRuqVXDABiUNSjzCn9Cm9P4B87VQUwzqN2XvtAqUK6729gFIJLwQV
	UY8eziJ8BX9lC5UZi1VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8iYJ-00000002IPm-3CKN;
	Sat, 26 Apr 2025 16:38:55 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8iYH-00000002IPJ-39bM
	for linux-rockchip@lists.infradead.org;
	Sat, 26 Apr 2025 16:38:55 +0000
Received: by mail-pf1-x42e.google.com with SMTP id d2e1a72fcca58-73bb647eb23so2872595b3a.0
        for <linux-rockchip@lists.infradead.org>; Sat, 26 Apr 2025 09:38:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745685533; x=1746290333; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0wfc1VqSeVbmVhsH2U0jIGnvId3nw503zH5VDDWhWLQ=;
        b=V3FQ68VvbrIbc5FylnimAe5UQ/DoMoN9dncQhHoJraY1xZrxL1w5j3pg36n4o2WRWS
         Xm7RtsSCRtZWdwrgcJDF1fs1P2ubKob1I8HComWUf0OWkZeX1Na/W9xbfnz2pOo7g18i
         i94O6atza977PNAqqQe3gCxYtrl0pj8UEe+OdLw8g4s8bfxe1i/JgUVlZwrSTNbClcbO
         /tEoI0nFn0+WjbrDNQnCki2nW1OepdNWt9PsQCEj3lk775mTT0i6cH8wYLKTrTLmAnkD
         Vl2WzWFxv/NP2GxizLCL6ouzr+Rnz0P9IpLbv9moOKjoqWZZN/CscaJMWJFfq5nN30Fo
         ejkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745685533; x=1746290333;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0wfc1VqSeVbmVhsH2U0jIGnvId3nw503zH5VDDWhWLQ=;
        b=eNGueY1KYrXOBP7jlvjc6muGTt+qM+XSWZhHG8bzWxXYfGWU4B5wA/As9412sJB3l1
         hXQGmlDNRdapb5D4YTIeNoQMWTGYJkAb2z5KA9DDS0Aui9ZTYNM3gV8awzo5mrLZ8t8z
         CDiWJ6iBpaF/ouiIMLWqKjOr04XK5VmUvLe6cknis6QdWG5R2x0J7gCeBdN4tSjRwKZc
         zD5j4v9X43mClutjgYsBO+7BP8HldIdIhMBCx9rqAiTuJ/RGAeYBfuJCtCDVH9wH3F9y
         XVEDU+dN0WqvxIreNrOfxQQ9Khs+LyVTCmJ/JgooNhFy/B3xWGkV4xbBsUjg/CtIqYdh
         wcNA==
X-Forwarded-Encrypted: i=1; AJvYcCV+781/PPTMMdgwEA6pV0svlbbKpbVL7mE5KuSu2FloalLjkhDIB7GJ45xFKZeLqfGeovXD2sPtIhdCmIXjLw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzAGYF0FsRyX+dFkpAk5pzYQ/ZWQmemLog7//2ab+q+3xlktIRz
	/V5ahWKrQPDojJz3K6UtovU4BCJBXooIweNlNGmvFHddECpkHQrnT1iqFehQ2w==
X-Gm-Gg: ASbGncuuGs+Ge56ijnjRiSOlJOVul5n4W2reB+RzFj7oA+eH8OOGoQV+9lo8ldKPszL
	ryDM/66JY/kUbXP7mbtknIQn6jGlvNIIWZ1doK4500GxMklOWAbreb2dj8cpXmZkWWTcptoB2kD
	x/yCNt2rQZCFkJwyLSFBSbIIC3xrcqoBo9C8/Ow/+61XJp/LVV3Z4kZ7bCaaYHIHpo1f+aosJyL
	Y/nJh7QF0sgWcPxqD+SfxYDCJe9aDkgeb3dK1AuP21Tau9Ta/72knJhYHJXue1benKzZ1PechL1
	t6YqJ6I+kuBsAUT1Y1F6RRz765+5bek2udozsI/SgviNP9OsFkPH
X-Google-Smtp-Source: AGHT+IEc27jG/DGwOoH4jKHwCMogOEml1REPJvuYp82y+3VBMRgJF0QNzNBYww14N5kJQs7N1n0m4A==
X-Received: by 2002:a05:6a00:2286:b0:739:4a93:a5db with SMTP id d2e1a72fcca58-73ff7396ad8mr4159447b3a.22.1745685533022;
        Sat, 26 Apr 2025 09:38:53 -0700 (PDT)
Received: from thinkpad ([120.60.143.241])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73e25a6a66dsm5170138b3a.102.2025.04.26.09.38.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Apr 2025 09:38:52 -0700 (PDT)
Date: Sat, 26 Apr 2025 22:08:48 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, 
	Niklas Cassel <cassel@kernel.org>, linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 3/3] PCI: dw-rockchip: Move
 rockchip_pcie_ep_hide_broken_ats_cap_rk3588() to .init()
Message-ID: <oppgjbuagt44e46esmm4tqdc5moitym3jwaj5psagng55exz7f@4eqwbit5yi6w>
References: <1744850111-236269-1-git-send-email-shawn.lin@rock-chips.com>
 <1744850111-236269-3-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1744850111-236269-3-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250426_093853_795624_B8EC797E 
X-CRM114-Status: GOOD (  22.66  )
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

T24gVGh1LCBBcHIgMTcsIDIwMjUgYXQgMDg6MzU6MTFBTSArMDgwMCwgU2hhd24gTGluIHdyb3Rl
Ogo+IFRoZXJlIGlzIG5vIHJlYXNvbiB0byBjYWxsIHJvY2tjaGlwX3BjaWVfZXBfaGlkZV9icm9r
ZW5fYXRzX2NhcF9yazM1ODgoKQo+IGZyb20gdGhlIHByZV9pbml0KCkgY2FsbGJhY2ssIGluc3Rl
YWQgb2YgdGhlIG5vcm1hbCBpbml0KCkgY2FsbGJhY2suCj4gCj4gVGh1cywgbW92ZSB0aGUgcm9j
a2NoaXBfcGNpZV9lcF9oaWRlX2Jyb2tlbl9hdHNfY2FwX3JrMzU4OCgpIGNhbGwgZnJvbQo+IHRo
ZSBwcmVfaW5pdCgpIGNhbGxiYWNrIHRvIHRoZSBpbml0KCkgY2FsbGJhY2ssIGFzOgo+IDEpIGlu
aXQoKSB3aWxsIHN0aWxsIGJlIGNhbGxlZCBiZWZvcmUgbGluayB0cmFpbmluZyBpcyBlbmFibGVk
LCBzbyB0aGUKPiAgICBxdWlyayB3aWxsIHN0aWxsIGJlIGFwcGxpZWQgYmVmb3JlIHRoZSBob3N0
IGhhcyBjYW4gc2VlIG91ciBkZXZpY2UuCj4gMikgVGhpcyBhbGxvd3MgdXMgdG8gcmVtb3ZlIHRo
ZSBwcmVfaW5pdCgpIGNhbGxiYWNrLCBhcyBpdCBpcyBub3cgdW51c2VkLgo+IDMpIEl0IGlzIGEg
bW9yZSByb2J1c3QgZGVzaWduLCBhcyB0aGUgaW5pdCgpIGNhbGxiYWNrIGlzIGNhbGxlZCBieQo+
ICAgIGR3X3BjaWVfZXBfaW5pdF9yZWdpc3RlcnMoKSwgd2hpY2ggd2lsbCBhbHdheXMgYmUgY2Fs
bGVkIGFmdGVyIGEgY29yZQo+ICAgIHJlc2V0LiBUaGUgcHJlX2luaXQoKSBjYWxsYmFjayBpcyBv
bmx5IGNhbGxlZCBvbmNlLCBhdCBwcm9iZSB0aW1lLgo+IAo+IE5vIGZ1bmN0aW9uYWwgY2hhbmdl
cy4KPiAKPiBTdWdnZXN0ZWQtYnk6IE5pa2xhcyBDYXNzZWwgPGNhc3NlbEBrZXJuZWwub3JnPgo+
IFNpZ25lZC1vZmYtYnk6IFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29tPgoKUmV2
aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxp
bmFyby5vcmc+CgotIE1hbmkKCj4gLS0tCj4gCj4gQ2hhbmdlcyBpbiB2NDoKPiAtIHJld3JpdGUg
Y29tbWl0IG1lc3NhZ2UKPiAKPiBDaGFuZ2VzIGluIHYzOiBOb25lCj4gQ2hhbmdlcyBpbiB2Mjog
Tm9uZQo+IAo+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMg
fCA3ICstLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCA2IGRlbGV0aW9u
cygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3
LXJvY2tjaGlwLmMgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlw
LmMKPiBpbmRleCBlNDUxOWMwLi43NzkwYTlmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGNpL2Nv
bnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYwo+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRy
b2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYwo+IEBAIC0yNzgsMTcgKzI3OCwxMyBAQCBzdGF0
aWMgdm9pZCByb2NrY2hpcF9wY2llX2VwX2hpZGVfYnJva2VuX2F0c19jYXBfcmszNTg4KHN0cnVj
dCBkd19wY2llX2VwICplcCkKPiAgCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBoaWRlIEFUUyBj
YXBhYmlsaXR5XG4iKTsKPiAgfQo+ICAKPiAtc3RhdGljIHZvaWQgcm9ja2NoaXBfcGNpZV9lcF9w
cmVfaW5pdChzdHJ1Y3QgZHdfcGNpZV9lcCAqZXApCj4gLXsKPiAtCXJvY2tjaGlwX3BjaWVfZXBf
aGlkZV9icm9rZW5fYXRzX2NhcF9yazM1ODgoZXApOwo+IC19Cj4gLQo+ICBzdGF0aWMgdm9pZCBy
b2NrY2hpcF9wY2llX2VwX2luaXQoc3RydWN0IGR3X3BjaWVfZXAgKmVwKQo+ICB7Cj4gIAlzdHJ1
Y3QgZHdfcGNpZSAqcGNpID0gdG9fZHdfcGNpZV9mcm9tX2VwKGVwKTsKPiAgCWVudW0gcGNpX2Jh
cm5vIGJhcjsKPiAgCj4gIAlyb2NrY2hpcF9wY2llX2VuYWJsZV9sMHMocGNpKTsKPiArCXJvY2tj
aGlwX3BjaWVfZXBfaGlkZV9icm9rZW5fYXRzX2NhcF9yazM1ODgoZXApOwo+ICAKPiAgCWZvciAo
YmFyID0gMDsgYmFyIDwgUENJX1NURF9OVU1fQkFSUzsgYmFyKyspCj4gIAkJZHdfcGNpZV9lcF9y
ZXNldF9iYXIocGNpLCBiYXIpOwo+IEBAIC0zNTksNyArMzU1LDYgQEAgcm9ja2NoaXBfcGNpZV9n
ZXRfZmVhdHVyZXMoc3RydWN0IGR3X3BjaWVfZXAgKmVwKQo+ICAKPiAgc3RhdGljIGNvbnN0IHN0
cnVjdCBkd19wY2llX2VwX29wcyByb2NrY2hpcF9wY2llX2VwX29wcyA9IHsKPiAgCS5pbml0ID0g
cm9ja2NoaXBfcGNpZV9lcF9pbml0LAo+IC0JLnByZV9pbml0ID0gcm9ja2NoaXBfcGNpZV9lcF9w
cmVfaW5pdCwKPiAgCS5yYWlzZV9pcnEgPSByb2NrY2hpcF9wY2llX3JhaXNlX2lycSwKPiAgCS5n
ZXRfZmVhdHVyZXMgPSByb2NrY2hpcF9wY2llX2dldF9mZWF0dXJlcywKPiAgfTsKPiAtLSAKPiAy
LjcuNAo+IAo+IAoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprg
rr/grrXgrq7gr40KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
