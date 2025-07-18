Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70FF8C83F17
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jul 2025 03:38:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KhN0mOiFEgOtU/XF72/jHsg6/TTVKE/DsUj1Kp+j7Bw=; b=e24sIj3spOReKl
	LmxhRTdnpHmlbb5VvCfc2Ls5b0yCqBhxC/0W1PK0+GCzl9fJd8iTZ2K2XeY4ncJ5ms0exXKDhde1P
	aMVfQyK3Qr1PImkMNVUibU+SX+QxRAyur0iEFHnv4F45AYfTIwI3Ol2U1wlAk17DnVXbzGafNlKn9
	TSFpdKSpXq5NFwZ00QO2AJCPSvIVhqPmQKlWZ8uVVEQwj91hw5r47qwjM9WJihR1GuXq1Z4uxsB4F
	VAjsSdz4Uv4oLuNmS+e3MvwexAXq2B8u0nKfFUxivrCsxO+++rOHDsQ4E9OK34gQHFwbBRNNpvTmz
	Mdj8Zu3CMyTMoDrbe4dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucbux-0000000BbmP-0RBI;
	Fri, 18 Jul 2025 03:37:51 +0000
Received: from mail-ua1-x92c.google.com ([2607:f8b0:4864:20::92c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucbqe-0000000BbVj-35zT;
	Fri, 18 Jul 2025 03:33:25 +0000
Received: by mail-ua1-x92c.google.com with SMTP id a1e0cc1a2514c-87f2aed4092so862833241.2;
        Thu, 17 Jul 2025 20:33:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752809603; x=1753414403; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=X4q0Q5EvAAnymgIMuX9CMnSNvFvZahS0xipjrXbSldw=;
        b=iqP06n9bfRJFc5nm7vejAX2XmY1amAuaXYdF490u2j+XLtxagz9Hnz7es/bjYNoc6/
         PGxnzEuQ1AUnDbRSy4bQV4WVInqaGd2rOOAS7RKOC5OquEpJLtMh1V33OKu3WkLd1xT+
         zCDHom4SngkSPZuF0kiYIFrwbIGCpTTp24t3Ry4DoR6TX4WUHTUA5AVCtyrdTbIwPWfP
         ZOYafav30SN0VEgdX1fjet6ezkNKhf/BiyQD73dSp1PuBQLkqKI3XowLVwYTnI6MlXX/
         YRaRBhAHgecGimjFKdVxUsGFWzkGCBxh8MOcIp44y7SDw0v8YFHOjbDOrBpZLiFx4EDK
         SklA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752809603; x=1753414403;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=X4q0Q5EvAAnymgIMuX9CMnSNvFvZahS0xipjrXbSldw=;
        b=L/r3JH7NWKvICk3yBPt4mVWCIPvM+Sp/N+k8wJEDgCGUZXGi7FEomHVUwlKUNhONwy
         sxf9jDErcblSqkPpWZ1d1NgpJMxJfW9Kwl3y3K9FwUmst/izjBrSHV7nZoFY4QR/Lma6
         W2Kchn5yPfLMeawHtiMZ1XNAq8MnjM0Oq0nDfLVTeG4RiNkVDeAgyGNdmWYey004vCAY
         NEJAtjiHF0kZX5du+jAqda0XQWP75lQJa52gFXfQ6c8svpRwX09rGhv+mjlufEkSwefQ
         XlBftvLu4nqVW16wjj0Qw8xI3Xy8myMVMvC/EobrmxDjHIPdYIpYIXroI0M4st57Ci7r
         KLUg==
X-Forwarded-Encrypted: i=1; AJvYcCU5NvaGhwpqX0Ev/vzZ7Jng0p2H1r5xX3dp/mehw0/rPQCuvs2F75BxK5DsBr9BxvvrtQk22OBdYZdtn1MkGA0Y@lists.infradead.org, AJvYcCXXXwiJMyBZcbAFX5rlEfutoX9loEh7miG6xTFuIUvEeB+ol71MafNdeehwBrcpMWKJzTICDM13+U+rQTmr2aU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxE97zyRGZ5DAh6knCmSvS3ZXmOlcj993A/aAV1Ccpmxk0eG3or
	N0CIcHQMyc1r+fjfpqeCeSfq/TYaOOV5De8ngNZ+y7qOOYw9mEaE/lGO
X-Gm-Gg: ASbGncvxB7bVcV73zHOpp4z5PGLDeumrcavDqtBVLeY74zdFyuQjHwSEI4V6ZMlyWux
	jN/iJgVCg9ItVjeeeUgy4vg2yLNizhvIJQ6vXZgl2lVnUPz8npq9R/TdST8fMObitnP9z2YzzGh
	1Yu5gJ4ECpSQ/5vtfdCbrbfu3qOtNkqhozV1wonduIHIwAypV0i2MUWL0Cxg3yBJtt0TYWqfZqw
	Tnq3xdef+YhlveAPCWYKzvqryHcHSKCakvXOclFb2/nfcgZ1vYnrOAoQKROO0leZ39SbS64wpSR
	EZanXhsCYv1v8HRXskGHBg8BeiQCnj6r9LyPZyOaIe75Z+yDT8yh6MU9LuqM6rxKA2Da1O16u6S
	qmSZBeEJpYKGZWbDx9eQ6
X-Google-Smtp-Source: AGHT+IFG+rqRc1GS9r7vH4lNCHz/0iF5wqAzIkwI4O1lQJw5WIt9L0WOWQNLdU0Vc6VPuIyzNQyhDA==
X-Received: by 2002:a05:6102:3053:b0:4f1:7946:ed52 with SMTP id ada2fe7eead31-4f89996c9f6mr5408257137.12.1752809603242;
        Thu, 17 Jul 2025 20:33:23 -0700 (PDT)
Received: from geday ([2804:7f2:800b:2246::dead:c001])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-4f9ad094fadsm138027137.16.2025.07.17.20.33.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Jul 2025 20:33:21 -0700 (PDT)
Date: Fri, 18 Jul 2025 00:33:05 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Hugh Cole-Baker <sigmaris@gmail.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [RFC PATCH v3 2/3] PCI: rockchip-host: Retry link training on
 failure without PERST#
Message-ID: <aHnAcbXuFqcMXy_5@geday>
References: <cover.1749582046.git.geraldogabriel@gmail.com>
 <b7c09279b4a7dbdba92543db9b9af169776bd90c.1749582046.git.geraldogabriel@gmail.com>
 <ac48d142-7aec-4fdd-92a4-6f9bc10a7928@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ac48d142-7aec-4fdd-92a4-6f9bc10a7928@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250717_203324_782999_5D760601 
X-CRM114-Status: GOOD (  26.41  )
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

T24gRnJpLCBKdWwgMTgsIDIwMjUgYXQgMDk6NTU6NDJBTSArMDgwMCwgU2hhd24gTGluIHdyb3Rl
Ogo+IEhpIEdlcmFsZG8sCj4gCj4g5ZyoIDIwMjUvMDYvMTEg5pif5pyf5LiJIDM6MDUsIEdlcmFs
ZG8gTmFzY2ltZW50byDlhpnpgZM6Cj4gPiBBZnRlciBhbG1vc3QgMzAgZGF5cyBvZiBiYXR0bGlu
ZyB3aXRoIFJLMzM5OSBidWdneSBQQ0llIG9uIG15IFJvY2sgUGkKPiA+IE4xMCB0aHJvdWdoIHRy
aWFsLWFuZC1lcnJvciBkZWJ1Z2dpbmcsIEkgZmluYWxseSBnb3QgcG9zaXRpdmUgcmVzdWx0cwo+
ID4gd2l0aCBlbnVtZXJhdGlvbiBvbiB0aGUgUENJIGJ1cyBmb3IgYm90aCBhIFJlYWx0ZWsgODEx
MUUgTklDIGFuZCBhCj4gPiBTYW1zdW5nIFBNOTgxYSBTU0QuCj4gPiAKPiA+IFRoZSBOSUMgd2Fz
IGNvbm5lY3RlZCB0byBhIE0uMi0+UENJZSB4NCByaXNlciBjYXJkIGFuZCBpdCB3b3VsZCBnZXQK
PiA+IHN0dWNrIG9uIFBvbGxpbmcuQ29tcGxpYW5jZSwgd2l0aG91dCBicmVha2luZyBlbGVjdHJp
Y2FsIGlkbGUgb24gdGhlCj4gPiBIb3N0IFJYIHNpZGUuIFRoZSBTYW1zdW5nIFBNOTgxYSBTU0Qg
aXMgZGlyZWN0bHkgY29ubmVjdGVkIHRvIE0uMgo+ID4gY29ubmVjdG9yIGFuZCB0aGF0IFNTRCBp
cyBrbm93biB0byBiZSBxdWlya3kgKE9FTS4uLiBubyBzdXBwb3J0KQo+ID4gYW5kIG5vbi1mdW5j
dGlvbmFsIG9uIHRoZSBSSzMzOTkgcGxhdGZvcm0uCj4gPiAKPiA+IFRoZSBTYW1zdW5nIFNTRCB3
YXMgZXZlbiB3b3JzZSB0aGFuIHRoZSBOSUMgLSBpdCB3b3VsZCBnZXQgc3R1Y2sgb24KPiA+IERl
dGVjdC5BY3RpdmUgbGlrZSBhIGJyaWNrZWQgY2FyZCwgZXZlbiB0aG91Z2ggaXQgd2FzIGZ1bGx5
IGZ1bmN0aW9uYWwKPiA+IHZpYSBVU0IgYWRhcHRlci4KPiA+IAo+ID4gSXQgc2VlbXMgYm90aCBk
ZXZpY2VzIGJlbmVmaXQgZnJvbSByZXRyeWluZyBMaW5rIFRyYWluaW5nIGlmIC0gYmlnIGlmCj4g
PiBoZXJlIC0gUEVSU1QjIGlzIG5vdCB0b2dnbGVkIGR1cmluZyByZXRyeS4KPiA+IAo+IAo+IEkg
ZGlkbid0IHNlZSB0aGlzIGVycm9yIGJlZm9yZSBlc3BlY2lhbGx5IGdpdmVuIFJUTDgxMTEgTklD
IGlzIHdpZGVsbHkKPiB1c2VkIGJ5IGN1c3RvbWVycy4KCkhpIFNoYXduLCBncmVhdCB0byBoZWFy
IGZyb20geW91IQoKTm90aWNlIHRoYXQgbXkgYm9hcmQgZXhwb3NlcyBQQ0llIG9ubHkgdmlhIE5W
TWUgY29ubmVjdG9yLCBhbmQgbm90CmRpcmVjdGx5IHZpYSBhIHByb3BlciBQQ0llIGNvbm5lY3Rv
ciwgc28gaXQgaXMgbmVjZXNzYXJ5IGZvciBtZSB0bwphZGFwdCB3aXRoIGluZXhwZW5zaXZlIHJp
c2VyIGNhcmQgdGhhdCBleHBvc2VzIHByb3BlciBQQ0llIGNvbm5lY3Rvci4KCkkgc2F5IHRoaXMg
YmVjYXVzZSB3aGlsZSBJIGRvbid0IGRvdWJ0IHRoYXQgdGhlIFJUTDgxMTEgTklDIHdvcmtzCm91
dC1vZi10aGUtYm94IGZvciBib2FyZHMgdGhhdCBkaXJlY3RseSBleHBvc2UgUENJZSBjb25uZWN0
b3IsIHRoZQpjb21iaW5hdGlvbiBvZiByaXNlciBjYXJkIHBsdXMgTklDIGhhcyBhIHNpbWlsYXIg
ZWZmZWN0IC0gdGhvdWdoIG5vdAplbnRpcmVseSBlcXVhbCwgYXMgZGVzY3JpYmVkIGFib3ZlIC0g
b2YgY29ubmVjdGluZyBrbm93biBnb29kIFNTRHMKdGhhdCBzaW1wbHkgcmVmdXNlIHRvIHdvcmsg
d2l0aCBSb2NrY2hpcC1JUCBQQ0llLgoKSSBhZG1pdCB0aGF0IHBhdGNoIDEgbG9va3MgYSBsaXR0
bGUgY3JhenksIGJ1dCBpcyBoYXMgdGhlIGVmZmVjdCBvZgplbmFibGluZyB1c2Ugb2YgcHJlc2Vu
dGx5IG5vbi13b3JraW5nIGRldmljZXMgb3IgY29tYmluYXRpb24gb2YgZGV2aWNlcwpvbiB0aGlz
IElQLCBhdCBsZWFzdCBvbiB0aGUgYm9hcmQgSSBoYXZlIGFjY2VzcyB0by4KCj4gCj4gQ291bGQg
eW91IGhlbHAgdHJpZWQgdGhpcz8KPiBbMV0gYXBwbHkgeW91ciBwYXRjaCAzIGZpcnN0CgpTdXJl
LCBJJ20gYWx3YXlzIG9wZW4gZm9yIHRlc3RpbmcsIGJ1dCBjb3VsZCB5b3UgY2xhcmlmeSB0aGUg
cGF0Y2ggMwpwYXJ0PyBBRkFJSyB0aGlzIHNlcmllcyBvZiBtaW5lIG9ubHkgaGFzIDIgcGF0Y2hl
cywgc28gSSdtIGEgbGl0dGxlCmNvbmZ1c2VkIGFib3V0IGV4YWN0bHkgd2hpY2ggcGF0Y2ggdG8g
YXBwbHkgYXMgYSBwcmVsaW1pbmFyeSBzdGVwLgoKQWxzbywgc2luY2UgeW91J3JlIGFza2luZyBt
ZSB0byB0ZXN0IHNvbWUgY29kZSwgSSB0aGluayBpdCBpcyBvbmx5IGZhaXIKaWYgSSBhc2sgeW91
IHRvIHRlc3QgbXkgY29kZSwgdG9vLiBJdCBzaG91bGRuJ3QgYmUgdG9vIGhhcmQgZm9yIHlvdSB0
bwpmaW5kIGEgb3RoZXJ3aXNlIHdvcmtpbmcgTlZNZSBTU0QgdGhhdCByZWZ1c2VzIHRvIGNvbXBs
ZXRlIGxpbmsgdHJhaW5pbmcKd2l0aCBjdXJyZW50IGNvZGUuIENvbm5lY3QgdGhpcyBTU0QgcGxl
YXNlIHRvIGEgUkszMzk5IGJvYXJkIGFuZCBsZXQgdXMKa25vdyBpZiBteSBwcm9wb3NlZCBjb2Rl
IGNoYW5nZSBkb2VzIGFueXRoaW5nIHRvIGFtZWxpb3JhdGUgdGhlCmxvbmctc3RhbmRpbmcgaXNz
dWUgb2YgU1NEIHRoYXQgcmVmdXNlcyB0byBjb29wZXJhdGUuCgpUaGFuayB5b3UsCkdlcmFsZG8g
TmFzY2ltZW50bwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
