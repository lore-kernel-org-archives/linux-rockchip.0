Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C848FC6175
	for <linux-rockchip@archiver.kernel.org>; Sat,  3 Jan 2026 16:41:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=02cFmD66ugPSoIGbw/rvPU6Bl6dRljetUS19q9G7qeU=; b=PcI1uCu+ElyeAw
	syW0tZjy8WXDZqEFkWu/SbdqmeI/ntPBrDK3QjRgpInk2qSGBYJBXwzDKNfKpx2OWUdki5wBs6CFy
	kjRD9O0AAuvaYc9cVM0rF3eLur5YFLEn2Tr5MTU8IJx6s6gFOuTknDili3BA+Fqs371kCcYBWgX+U
	9vQcGb6a75UBat28cP5PR3ajdeUHRiFF1Zfnha69P+1hlLj4rxkuRyrsuMLnkI3EUV69EckPvCoUP
	Er4IsX7wFfunT0z4QgeBi8lgQ7L0LuZzou7UNLeRL7ZA8sw1wADiznUe/zjB4w4cYhrmqJdtHJ62v
	h5YBdXAL3sRD3JCtBxnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vc4hB-00000009de5-3TUK;
	Sat, 03 Jan 2026 16:41:41 +0000
Received: from mail-qv1-xf2c.google.com ([2607:f8b0:4864:20::f2c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vc4h8-00000009ddK-06O6
	for linux-rockchip@lists.infradead.org;
	Sat, 03 Jan 2026 16:41:40 +0000
Received: by mail-qv1-xf2c.google.com with SMTP id 6a1803df08f44-8888a1c50e8so174927776d6.0
        for <linux-rockchip@lists.infradead.org>; Sat, 03 Jan 2026 08:41:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rowland.harvard.edu; s=google; t=1767458496; x=1768063296; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mlKFI5VRK7mDczHswg21LQqMhaeoNo0R7gM8QnlAtPU=;
        b=VZenfrNndJZwgC9Nkbk2neKozs5bhgkcLb3ctCImJxDbsUN/W2+6KhkyHDoQ2orErQ
         IWgvqXPThjnXEUUrgxYfPbpOkZT/Hb5PXJ7PNDNF2ngEhFOOIVNxFZqkAY/fovAXgF2D
         jhgcmTpf12VTI59vriWhlxGS8fzy86rw2lvBydWPbhyDhl5p3c5TV2ft/p9vDolMwrQv
         59G9S4RJqkUC0ECG7vt5q7RGdT40qH6LMxOF47QCo3dzXUg2efty5E77CeCtM8Pkyioa
         +3dHm7O2qcLTdx4JGOgLo7qKUCA1kYc3Oego7IXXkPCK3E6oruERn6+2+V4yuN87DysH
         /8Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767458496; x=1768063296;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mlKFI5VRK7mDczHswg21LQqMhaeoNo0R7gM8QnlAtPU=;
        b=QjWLl6lBbZAv+LcD4l8JDetZgjZHsw3/547Li7gQheO0/zTFXtI6F5/3VLHHfhjifE
         9jVo1LiGEAjreQBcDCXJ0vm7id9YC+/zZdC1VXQlANovZVVjohDZFE4r5DSTR5emxapW
         HuVxSX06v31PG6gXewMNLwn4GaA/H4OvyLMw95Iyp/VnCBcgErPlaFdm9+yMXoz0GCpm
         BazI+QjClTvqBbBQ+101z3vmP31052sFGeVugf96EZaACE730ezI5CGEbFzAj+HKsb/L
         MYmnOgp+ZndiUWxWuyhIh7vV9XL9S1Almrygl69f8M36tt+eGuLp2PO6GAk1hPL591EW
         m3iQ==
X-Forwarded-Encrypted: i=1; AJvYcCWiLuLML7lUzYyXUNYRyRXKoGqx+yQUUvXbI1UrQ7jnkPUAax7hkFTQ0OjHLQdqpb6ij44e9Yg2+j1K1uU87A==@lists.infradead.org
X-Gm-Message-State: AOJu0YxNm8YZ+fTBrwT2UKPmMkOpo5PGOoXekYkR3EZ+kOAAqNLBj/2w
	xQadMFz0bZSihxcT5SljeZNE23Q0rVrvTb0a2bcyMC9iXnj/20KSdtNKX+uX6bLW1Q841vRSscl
	qvyk=
X-Gm-Gg: AY/fxX4PPnd2SgFywpXXpOQU5TGsU3KpMbmzD2xY13zyayRxf75T4UnD3ik/22f8xNg
	eU8hDT1qjj5gxt7p2xpD/H8BToEvmxWr4HicljYe5cpVJ8KvsEQnFc6rg1npErFEafFM0AcF1Xh
	lMh6PrH2MzhqAmciMj+rRPU5LQ6v8R63yb18eHLoojbXvmCwQGthtDbLFf4tXAeu8cgO/CFQS4f
	KiTp62ZMctteEZojju5Wm15X/AUcE/ukw4t5zOErGy0VYVuoyG5BzLXUy0zrThExv209rCOy4HU
	JuXi3C0bnzaWLnBnTmZkaBmP9TS3S2mWe4/ozvfIhbvFf58Bo9+XYyN8gK8oNN9rVEkfNP4f/ez
	GA9fdkN+HozMAy1GcHBJs6Kqakgxm6WryR3tdZal/fUht1H1BndIwuFGJR0JlTcKqzTe40PGrzi
	VATZVin1w/EzFL
X-Google-Smtp-Source: AGHT+IFEZA7vyZ0ao1b1ph7zvhvjOx5pO8dLWGenWSlCMl0fhScK2fp2NqonAO6GMTVcN0krOHmCfA==
X-Received: by 2002:a0c:fbc4:0:b0:797:1a0d:cdd3 with SMTP id 6a1803df08f44-88d82526111mr480719386d6.19.1767458496232;
        Sat, 03 Jan 2026 08:41:36 -0800 (PST)
Received: from rowland.harvard.edu ([2601:19b:d03:1700::16e7])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88d9aa363e3sm318143286d6.57.2026.01.03.08.41.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Jan 2026 08:41:35 -0800 (PST)
Date: Sat, 3 Jan 2026 11:41:32 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Huacai Chen <chenhuacai@kernel.org>
Cc: Diederik de Haas <diederik@cknow-tech.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Huacai Chen <chenhuacai@loongson.cn>, linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org, stable@vger.kernel.org,
	Shengwen Xiao <atzlinux@sina.com>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] USB: OHCI/UHCI: Add soft dependencies on ehci_hcd
Message-ID: <561129d8-67ff-406c-afe8-73430484bd96@rowland.harvard.edu>
References: <2025123049-cadillac-straggler-d2fb@gregkh>
 <DFBMNYF0U5PK.24YOAUZFZ0ESB@cknow-tech.com>
 <73d472ea-e660-474c-b319-b0e8758406c0@rowland.harvard.edu>
 <CAAhV-H6drj1df3Y4_Z67t4TzJ5n6YiexsEHKTPvi1caNvw5H9A@mail.gmail.com>
 <0c85d288-405f-4aaf-944e-b1d452d0f275@rowland.harvard.edu>
 <CAAhV-H5GdkMg-uzMpDQPGLs+gWNAy6ZOH33VoLqnNyWbRenNDw@mail.gmail.com>
 <34c7edd0-3c0c-4a57-b0ea-71e4cba2ef26@rowland.harvard.edu>
 <CAAhV-H7j=cD9dkaB5bWxNdPtoVR4NUFvFs=n46TaNte1zGqoOA@mail.gmail.com>
 <98e36c6f-f0ee-40d2-be7f-d2ad9f36de07@rowland.harvard.edu>
 <CAAhV-H601B96D9rFrnARho4Lr9A+ah7Cx7eKiPr=epbG17ODHQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAhV-H601B96D9rFrnARho4Lr9A+ah7Cx7eKiPr=epbG17ODHQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260103_084138_407853_E6EAFDF5 
X-CRM114-Status: GOOD (  22.67  )
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

T24gU2F0LCBKYW4gMDMsIDIwMjYgYXQgMTE6NTc6NDdBTSArMDgwMCwgSHVhY2FpIENoZW4gd3Jv
dGU6Cj4gT24gU2F0LCBKYW4gMywgMjAyNiBhdCAxMTozM+KAr0FNIEFsYW4gU3Rlcm4gPHN0ZXJu
QHJvd2xhbmQuaGFydmFyZC5lZHU+IHdyb3RlOgo+ID4gU2luY2UgdGhlc2Ugc3lzdGVtcyBkb24n
dCB1c2UgUENJLCB0aGUgcXVlc3Rpb24gSSByYWlzZWQgZWFybGllciBzdGlsbAo+ID4gbmVlZHMg
dG8gYmUgYW5zd2VyZWQ6IEhvdyBkbyB0aGV5IHJvdXRlIGNvbm5lY3Rpb25zIGJldHdlZW4gdGhl
IHBvcnRzCj4gPiBhbmQgdGhlIHR3byBjb250cm9sbGVycz8KPiA+Cj4gPiBUaGVyZSBtYXkgYmUg
c29tZSBleGNlcHRpb25zLCBidXQgZm9yIHRoZSBtb3N0IHBhcnQsIHRoZSBjb2RlIGluCj4gPiBl
aGNpLWhjZCB3YXMgd3JpdHRlbiBhc3N1bWluZyB0aGF0IG9ubHkgUENJLWJhc2VkIGNvbnRyb2xs
ZXJzIHdpbGwgaGF2ZQo+ID4gY29tcGFuaW9ucy4gIElmIHlvdSB3YW50IHRvIG1ha2UgYW4gZXhj
ZXB0aW9uIGZvciBsb29uZ3Nvbi0yazA1MDAsIHlvdQo+ID4gd2lsbCBuZWVkIHRvIGZpZ3VyZSBv
dXQgaG93IHRvIGdldCBpdCB0byB3b3JrLgo+IExvb25nc29uLTJLMDUwMCB1c2UgRUhDSS9PSENJ
IHdpdGggcGxhdGZvcm0gYnVzLCB3aGlsZQo+IExvb25nc29uLTJLMTAwMC8yMDAwIHVzZSBFSENJ
L09IQ0kgd2l0aCBQQ0kgYnVzLiBUaGV5IHVzZSB0aGUgc2FtZSBVU0IKPiBJUCBjb3Jlcywgc28g
dGhlIHJvdXRlIGNvbm5lY3Rpb25zIGFyZSBwcm9iYWJseSB0aGUgc2FtZS4KCldpdGggUENJIHdl
IGtub3cgZXhhY3RseSB3aGljaCBjb21wYW5pb24gY29udHJvbGxlciBlYWNoIHBvcnQgaXMgCmNv
bm5lY3RlZCB0by4gIElzIHRoYXQgdHJ1ZSBpbiB5b3VyIHNpdHVhdGlvbj8KCk9yIGRvIHlvdSBo
YXZlIG9ubHkgb25lIGNvbXBhbmlvbiBjb250cm9sbGVyPwoKRm9yIHRoYXQgbWF0dGVyLCBob3cg
bWFueSBVU0IgcG9ydHMgZG8gdGhlc2Ugc3lzdGVtcyBoYXZlPyAgQXJlIHNvbWUgb2YgCnRoZW0g
VVNCLTEgb25seSBvciBVU0ItMiBvbmx5PwoKPiA+IEhhdmUgeW91IHRlc3RlZCBhbnkgb2YgdGhv
c2Ugc3lzdGVtcyB0byBzZWUgaG93IHRoZXkgYmVoYXZlIGlmIGEgVVNCLTEKPiA+IGRldmljZSBp
cyBhbHJlYWR5IHBsdWdnZWQgaW4gYW5kIHJ1bm5pbmcgd2hlbiB0aGUgZWhjaS1oY2QgZHJpdmVy
IGdldHMKPiA+IGxvYWRlZD8KCllvdSBkaWQgbm90IGFuc3dlciB0aGlzIHF1ZXN0aW9uLgoKVGhl
cmUgYXJlIG90aGVyIGlzc3VlcyBpbnZvbHZpbmcgY29tcGFuaW9uIGNvbnRyb2xsZXJzLCBjb25u
ZWN0ZWQgd2l0aCAKaGliZXJuYXRpb24uICBZb3Ugc2hvdWxkIHRha2UgYSBsb29rIGF0IGNvbW1p
dCA2ZDE5YzAwOWNjNzggKCJVU0I6IAppbXBsZW1lbnQgbm9uLXRyZWUgcmVzdW1lIG9yZGVyaW5n
IGNvbnN0cmFpbnRzIGZvciBQQ0kgaG9zdCAKY29udHJvbGxlcnMiKSwgd2hpY2ggd2FzIGxhdGVy
IG1vZGlmaWVkIGJ5IGNvbW1pdCAwNTc2ODkxOGI5YTEgKCJVU0I6IAppbXByb3ZlIHBvcnQgdHJh
bnNpdGlvbnMgd2hlbiBFSENJIHN0YXJ0cyB1cCIpIGFuZCBhIGZldyBvdGhlcnMuCgpBbHNvLCBy
ZWFkIHRocm91Z2ggdGhlIGN1cnJlbnQgY29kZSBpbiBoY2QtcGNpLmMgKGZvcl9lYWNoX2NvbXBh
bmlvbigpLCAKZWhjaV9wcmVfYWRkKCksIGVoY2lfcG9zdF9hZGQoKSwgbm9uX2VoY2lfYWRkKCks
IGVoY2lfcmVtb3ZlKCksIGFuZCAKZWhjaV93YWl0X2Zvcl9jb21wYW5pb25zKCkpLiAgWW91ciBu
b24tUENJIHN5c3RlbSB3aWxsIG5lZWQgdG8gaW1wbGVtZW50IApzb21lIHNvcnQgb2YgZXF1aXZh
bGVudCB0byBhbGwgdGhlc2UgdGhpbmdzLgoKQWxhbiBTdGVybgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
