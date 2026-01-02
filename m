Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB8DFFA374F
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Jan 2026 15:14:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pDFcgsXZhHUD4PGDUmAJyfBNbZdvXyhw8Lb/rXsY9sM=; b=I5hBVLZTvOAgP1
	4sV8WYwK9M35pithw/JIBXyIrusbXtVaYNBCdBX09UC8gLGZTR7cHys9RBJ0tsCHy7rqY5RK3tTs2
	Qh471OhiW/E39Hzne70mLDUEB/uZX0wvEciPLOdTtB7rUbPx4J8L1lykBGm1DlV8YStCZ1DschlJi
	6VpHvviZEnoGIoWxeRmRTVpwU4hl5mlIAWJKuv+NNegdRSUbAy+1biNoES17PGJlijK4uJhbr3+WS
	+McM4UWkX6YH5FVd4SW+uWo+i+6m9NRGoAR8mqBE/Bsa4aLiCvuss4verVm5diQQypfGNMB/uZdlI
	RH1HxzVHX6faEUWJx6dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbgqk-00000008Py2-2jDc;
	Fri, 02 Jan 2026 15:13:58 +0000
Received: from mail-qt1-x833.google.com ([2607:f8b0:4864:20::833])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbgqh-00000008Pxd-2qnI
	for linux-rockchip@lists.infradead.org;
	Fri, 02 Jan 2026 15:13:57 +0000
Received: by mail-qt1-x833.google.com with SMTP id d75a77b69052e-4ee1939e70bso122198871cf.3
        for <linux-rockchip@lists.infradead.org>; Fri, 02 Jan 2026 07:13:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rowland.harvard.edu; s=google; t=1767366834; x=1767971634; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MKRrOSohpgOIyc76MbizVc926qdGseLbYCMIQ6kB9to=;
        b=v7k39pv3M/NLHCEsGHU3qu9r28Rvasp2V5ZQVcfww7YDY2lrThNTd4y9Nv+6EHO9m/
         ybVeh19MHwo1Fo6BOEHG9cr0T+zyfyTewf1OcN296CVzlhxNhcuopPI8zWtDEQfYf+MJ
         tmM7jvMjU+9uR90mb7JeDdoCzV7XgsQQKE893oG/F+S6uVjGTFnRrnyZ6H+V2RLdnPcZ
         UUl18FuCYhd8kGLLhFdf+WH+lmb8gUJv+6AiCY063fizRCGXrIFtjkQ69DXoshf4mAgB
         omboi3xF1BXD24oc43PCuSwJiN4dXu9sLNTNunF8JIVbk00Hiv7vNY969Mh5ieD3CKfe
         uPcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767366834; x=1767971634;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MKRrOSohpgOIyc76MbizVc926qdGseLbYCMIQ6kB9to=;
        b=aTw4InBiytiupPTE7P88BQUuIwpCXo8+d5qQi4GaocbX7agYezherUeH6dTl9qb5sM
         9+LhliYlEQIcnzZ/JbT6gCaVJKi9HOTpjD2bm0FVrNs0DTwcn/Zahy/qjlilCcFgmAPn
         3LXUogz8S0yiUVr4TO0e/zvF3tEEUzULMM3equx3huoh0sTzQ72XGLonjm4HQ3+5vit3
         7Gu8lzjUz8MFmj2F+UYU9llsfJzIvYcgUe8MPQRRMqhtaTG3FEQP4DvxAGogE/Qv10Jp
         VwbuS3mLLY7ORC+tagplbJWGavBxgalC1wZtoeCrY+PQrEjd5lTLDaoBdzr7vfl1QBQ/
         H/8Q==
X-Forwarded-Encrypted: i=1; AJvYcCXjgVEWk0PP34xZC2aWqApJxXgUsy2G6vm7+RFcakF1L87634O0+4azyQl9dAi518dhppAaVnTNPW4v1PbsKQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxhyuWl0nQMHAcPaZho0uSU1g3sZXB9+PN8KalssWN0XRl8VEIV
	J5tEBbA7U7NUdKmFrbOu/fTdkt8QUtn6JDWEmIiqVhficxR3MuEJ1o5MOr4ucpi0IRHRZiC8Oat
	qRq0=
X-Gm-Gg: AY/fxX6Aqql8637CLHzYNIwbApnfZzpU83dlGariG3EGIrMnIJffw62VuJTQTCSkd8/
	h4a334SZLK9Q8ibclhfpSDz5kOW1B9i2VgGSS1RPmhQDTkgtGU7G9aCUO6qvhywBzaSIdJt4rpH
	Ice1D+INgqM5oYcK3UlS0B4asGgfoogMeLfdTrqBnOgY+tbkTv81MUNTGR656AObqKD9SLXZfmj
	yefAWck5H6RvUjdUnlpJjr0M2YIKelFcjchHXTMDWVtqmkPTgZuXnaYy9REryVzc36l373k8Ofx
	r99CfRTWuC+RW+N17ItSlR/q7HEsBLHFU30WkGaV5ebmNZv68Vuc0Q6o7hkMz/5cEkDlnKxaLS7
	AqGZFVNJAPCvHjf2v85DMoidfzreVo6dqoeTyg4oEBccV9bThNFbh4fUg2lt4Oy5XXiFNVAsX3i
	Qp2G5I/W6ia7QX
X-Google-Smtp-Source: AGHT+IFiJdnVXmubr0ZXgWZIp6IV1ka1R38pWa45OLmGF5b/Jmt6hv2wey1K3GFnP+DN0+NjKJzq2A==
X-Received: by 2002:ac8:5dce:0:b0:4ee:17b0:6261 with SMTP id d75a77b69052e-4f4abcf1559mr651560161cf.29.1767366833772;
        Fri, 02 Jan 2026 07:13:53 -0800 (PST)
Received: from rowland.harvard.edu ([2601:19b:d03:1700::16e7])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4f4ac62fa56sm316864931cf.17.2026.01.02.07.13.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Jan 2026 07:13:53 -0800 (PST)
Date: Fri, 2 Jan 2026 10:13:50 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Huacai Chen <chenhuacai@kernel.org>
Cc: Diederik de Haas <diederik@cknow-tech.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Huacai Chen <chenhuacai@loongson.cn>, linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org, stable@vger.kernel.org,
	Shengwen Xiao <atzlinux@sina.com>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] USB: OHCI/UHCI: Add soft dependencies on ehci_hcd
Message-ID: <34c7edd0-3c0c-4a57-b0ea-71e4cba2ef26@rowland.harvard.edu>
References: <20251230080014.3934590-1-chenhuacai@loongson.cn>
 <2025123049-cadillac-straggler-d2fb@gregkh>
 <DFBMNYF0U5PK.24YOAUZFZ0ESB@cknow-tech.com>
 <73d472ea-e660-474c-b319-b0e8758406c0@rowland.harvard.edu>
 <CAAhV-H6drj1df3Y4_Z67t4TzJ5n6YiexsEHKTPvi1caNvw5H9A@mail.gmail.com>
 <0c85d288-405f-4aaf-944e-b1d452d0f275@rowland.harvard.edu>
 <CAAhV-H5GdkMg-uzMpDQPGLs+gWNAy6ZOH33VoLqnNyWbRenNDw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAhV-H5GdkMg-uzMpDQPGLs+gWNAy6ZOH33VoLqnNyWbRenNDw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260102_071356_125893_84201CF2 
X-CRM114-Status: GOOD (  28.99  )
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

T24gRnJpLCBKYW4gMDIsIDIwMjYgYXQgMTA6MzY6MzVBTSArMDgwMCwgSHVhY2FpIENoZW4gd3Jv
dGU6Cj4gT24gV2VkLCBEZWMgMzEsIDIwMjUgYXQgMTE6MjHigK9QTSBBbGFuIFN0ZXJuIDxzdGVy
bkByb3dsYW5kLmhhcnZhcmQuZWR1PiB3cm90ZToKPiA+Cj4gPiBPbiBXZWQsIERlYyAzMSwgMjAy
NSBhdCAwNTozODowNVBNICswODAwLCBIdWFjYWkgQ2hlbiB3cm90ZToKPiA+ID4gRnJvbSB5b3Vy
IGxvbmcgZXhwbGFuYXRpb24gSSB0aGluayB0aGUgb3JkZXIgaXMgc3RpbGwgaW1wb3J0YW50LiAi
TmV3Cj4gPiA+IGNvbm5lY3Rpb24iIG1heSBiZSBoYXJtbGVzcyBmb3IgVVNCIGtleWJvYXJkL21v
dXNlLCBidXQgcmVhbGx5Cj4gPiA+IHVuYWNjZXB0YWJsZSBmb3IgVVNCIHN0b3JhZ2UuCj4gPiA+
Cj4gPiA+IElmIHdlIHJldmVydCAwNWM5MmRhMGM1MjQgYW5kIDliZWVlZTY1ODRiOSwgdGhlIHJl
YWwgcHJvYmxlbSBkb2Vzbid0Cj4gPiA+IGRpc2FwcGVhci4gVGhlbiB3ZSBnbyBiYWNrIHRvIHBy
ZS0yMDA4IHRvIHJlbHkgb24gZGlzdHJpYnV0aW9ucwo+ID4gPiBwcm92aWRpbmcgYSBjb3JyZWN0
IG1vZHByb2JlLmNvbmY/Cj4gPgo+ID4gVGhlIHdhcm5pbmcgbWVzc2FnZSBpbiA5YmVlZWU2NTg0
Yjkgd2FzIHdyaXR0ZW4gYSBsb25nIHRpbWUgYWdvOyBiYWNrCj4gPiB0aGVuIEkgZGlkbid0IHJl
YWxpemUgdGhhdCB0aGUgcmVhbCBkZXBlbmRlbmN5IHdhcyBiZXR3ZWVuIHRoZSAtcGNpCj4gPiBk
cml2ZXJzIHJhdGhlciB0aGFuIHRoZSAtaGNkIG9uZXMgKGFuZCBJIHdhc24ndCBhd2FyZSBvZiBz
b2Z0ZGVwcykuICBUaGUKPiA+IHNvZnQgZGVwZW5kZW5jeSBpbiAwNWM5MmRhMGM1MjQgaXMgYmV0
d2VlbiB0aGUgLXBjaSBkcml2ZXJzLCBzbyBpdCBpcwo+ID4gY29ycmVjdC4KPiA+Cj4gPiBUbyBw
dXQgaXQgYW5vdGhlciB3YXksIG9uIFBDSS1iYXNlZCBzeXN0ZW1zIGl0IGlzIG5vdCBhIHByb2Js
ZW0gaWYgdGhlCj4gPiBtb2R1bGVzIGFyZSBsb2FkZWQgaW4gdGhpcyBvcmRlcjogdWhjaS1oY2Qs
IG9oY2ktaGNkLCBlaGNpLWhjZCwKPiA+IGVoY2ktcGNpLCBvaGNpLXBjaSwgdWhjaS1wY2kuICBF
dmVuIHRob3VnaCB0aGUgd2FybmluZyBtZXNzYWdlIHdvdWxkIGJlCj4gPiBsb2dnZWQsIHRoZSBt
ZXNzYWdlIHdvdWxkIGJlIHdyb25nLgo+IENvcnJlY3QgbWUgaWYgSSdtIHdyb25nLgo+IAo+IEkg
Zm91bmQgWEhDSSBpcyBjb21wYXRpYmxlIHdpdGggVVNCMS4wLzIuMCBkZXZpY2VzLAoKWWVzLgoK
PiAgYnV0IEVIQ0kgaXNuJ3QKPiBjb21wYXRpYmxlIHdpdGggVVNCMS4wLiBJbnN0ZWFkLCBFSENJ
IHVzdWFsbHkgaGFzIGFuIE9IQ0kgdG9nZXRoZXIsCj4gdGhpcyBpcyBub3Qgb25seSBpbiB0aGUg
UENJIGNhc2UuCgpJdCdzIG1vcmUgY29tcGxpY2F0ZWQgdGhhbiB0aGF0LgoKRm9yIHF1aXRlIGEg
bG9uZyB0aW1lIG5vdywgbW9zdCBzeXN0ZW1zIHVzaW5nIEVIQ0kgaGF2ZSBub3QgaW5jbHVkZWQg
YSAKY29tcGFuaW9uIE9IQ0kgb3IgVUhDSSBjb250cm9sbGVyLiAgSW5zdGVhZCB0aGV5IGluY2x1
ZGUgYSBidWlsdC1pbiAKVVNCLTIuMCBodWI7IHRoZSBodWIgaXMgd2lyZWQgZGlyZWN0bHkgaW50
byB0aGUgRUhDSSBjb250cm9sbGVyIGFuZCB0aGUgCmV4dGVybmFsIHBvcnRzIGFyZSBjb25uZWN0
ZWQgdG8gdGhlIGh1Yi4gIFVTQi0yLjAgaHVicyBpbmNsdWRlIAp0cmFuc2FjdGlvbiB0cmFuc2xh
dG9ycyB0aGF0IHJlbGF5IHBhY2tldHMgYmV0d2VlbiBoaWdoLXNwZWVkIGFuZCBsb3ctIApvciBm
dWxsLXNwZWVkIGNvbm5lY3Rpb25zLCBzbyB0aGV5IGNhbiB0YWxrIHRvIGJvdGggVVNCLTEgYW5k
IFVTQi0yIApkZXZpY2VzLiAgSGVuY2Ugbm8gY29tcGFuaW9uIGNvbnRyb2xsZXIgaXMgbmVlZGVk
LgoKSSBkb24ndCByZW1lbWJlciB3aGVuIEludGVsIHN0YXJ0aW5nIHNlbGxpbmcgY2hpcHNldHMg
bGlrZSB0aGlzLCBidXQgaXQgCndhcyBwcm9iYWJseSBhcm91bmQgMjAwMCBvciBlYXJsaWVyLiAg
KFNvbWUgbm9uLUludGVsLWJhc2VkIHN5c3RlbXMgCmluY2x1ZGVkIGEgdHJhbnNhY3Rpb24gdHJh
bnNsYXRvciBkaXJlY3RseSBpbiB0aGUgcm9vdCBodWIsIHNvIHRoZXkgCmRpZG4ndCBldmVuIG5l
ZWQgdG8gaGF2ZSBhbiBhZGRpdGlvbmFsIFVTQi0yLjAgaHViLikKCkJlZm9yZSB0aGF0LCBzeXN0
ZW1zIGRpZCBpbmNsdWRlIGNvbXBhbmlvbiBjb250cm9sbGVycyBhbG9uZyB3aXRoIGFuIApFSENJ
IGNvbnRyb2xsZXIuICBJIGRvbid0IGtub3cgb2YgYW55IG5vbi1QQ0kgc3lzdGVtcyB0aGF0IGRp
ZCB0aGlzLCBidXQgCm9mIGNvdXJzZSBzb21lIG1heSBleGlzdC4gIEhvd2V2ZXIsIHRoZSBFSENJ
LTEuMCBzcGVjaWZpY2F0aW9uIHNheXMgdGhpcyAKaW4gc2VjdGlvbiA0LjIgIlBvcnQgUm91dGlu
ZyBhbmQgQ29udHJvbCIgKHAuIDU0KToKCglUaGUgVVNCIDIuMCBob3N0IGNvbnRyb2xsZXIgbXVz
dCBiZSBpbXBsZW1lbnRlZCBhcyBhIAoJbXVsdGktZnVuY3Rpb24gUENJIGRldmljZSBpZiB0aGUg
aW1wbGVtZW50YXRpb24KCWluY2x1ZGVzIGNvbXBhbmlvbiBjb250cm9sbGVycy4KCj4gU28gSSBn
dWVzcyBPSENJL1VIQ0kgaGF2ZSBhbiBFSENJIGRlcGVuZGVuY3kgaW4gb3JkZXIgdG8gYXZvaWQg
Im5ldwo+IGNvbm5lY3Rpb24iLCBub3Qgb25seSBpbiB0aGUgUENJIGNhc2UuCgpEbyB5b3Uga25v
dyBvZiBhbnkgbm9uLVBDSSBzeXN0ZW1zIHRoYXQgZG8gdGhpcz8KCkFsYW4gU3Rlcm4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
