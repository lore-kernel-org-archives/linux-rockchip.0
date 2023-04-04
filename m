Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8E3DC6FD1D
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Apr 2023 14:43:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=31MSa2WngjALBzHgeFoP23C57is3xzNwGzp5alZMWTw=; b=2SJnLcm5NJua3b
	SqzyDm7sWa6AfJea7Wa8GARUax59xx3OJuKul86JNTQvp4xS6fkaI95EJR1qW7rDGZ3p+fXr6wvkI
	w1mOHZNi3c3CZ3ly2byH2ZHKmIsf4bjjnae+DdHGQEBoy/tEryNRBIkNfZeDduwtZ9I9sB2E11cdo
	5y5leaEy3uboJRSCb2HlgTtuJUOZ03KPTWLLV5xOvVYYMfiY7HB34lAwFGZMd8rg0wqxagA/ywbea
	YOoL7hPpHmXMyMzHhIfSOxsro9XNSrZ1rrY3UF2fsvAjHojdlnMawKLHtZiIS+cl13EVBu6eLkO0s
	Tr3kFGkq8URODPGCScDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjhs9-001qkl-2x;
	Tue, 04 Apr 2023 14:42:57 +0000
Received: from mail-oi1-x22b.google.com ([2607:f8b0:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjhs6-001qjk-3B;
	Tue, 04 Apr 2023 14:42:56 +0000
Received: by mail-oi1-x22b.google.com with SMTP id q27so23628570oiw.0;
        Tue, 04 Apr 2023 07:42:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680619373;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=za5BO/JgKy56P0P/Z8yk+aMunnq2fdjXd9ztVhDZs+E=;
        b=S/XoFNDUa4RahS6B4V+VsVOf16zucDqkJ+QMdZlpXWLfiNtquZ4Q7Ow7PAJ6f0xhVC
         4gY05G4PwrVh94KhtkQh6wXmUzH7lDGaz2wZeVmQfSAdXhFKk5PRZtJH8a/qDrM0xHiZ
         RNt7Q6WGzJeTbrh0YgdoKyzylFHC8EoIa4W7ekqvnKPqMV3NL6wHIFsCZWJRclQXE5lk
         X/ePKsGsZk5gsbsCfzNFyFUc+WGObK+ai4mH33lR0+uovfqnynNeYXr7JlFTU6Ql65X5
         FbksPoUTrbUNZI72nKeWMwkSRasU9R96IQ+hYwLh9A/ps96VGsYoafia+BCVeM5qEe/O
         fdRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680619373;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=za5BO/JgKy56P0P/Z8yk+aMunnq2fdjXd9ztVhDZs+E=;
        b=GIS6TFhvM86zkX/13k8hyNVWbyX8hrrNoLex2Hb+gs2jAg6y7arLAd8lOPh3IkMkJl
         oDA4p2YpdBF3ncTI6F9O7zOCQVIGhsp1L1aqffNHz+xvkxLXs65HLlP5yeSx8wWtmC0i
         Y3flLXGxub8piEjKMYWNq4005FND/XyKaIJzyQrdppJZIPCeyNfJxXmhsJv+mdOoZugK
         owVUCIASatMN+OY9cfzB7Q6M1kU4VjS8+gvssNQRtL3ZlcH15KtqRw2NKm7Pd9h7POkD
         WQ+z2vki79Z7Ag0c2/zPzTPElfi2/P6W3OnkM5QOOTqd3CjrRIb9xNHzJJVWzYFKtb1e
         u0jA==
X-Gm-Message-State: AAQBX9fEfGaB6qlsoxoiP1Sta9Zg8WL4qABFYiMp1IiB1LMqt/J1C2iw
	GfrmlWuUo+U2WT+ONFhlnz+BipUq2awFKuyptECooz0v4Io=
X-Google-Smtp-Source: AKy350Yif0VDmVk5S4ytwPYSwOTwWcOv3HAhfzuoUQ5lZDzYswoW99NaLv4P5VfBNlyPbniOeS7jNdmYF5wPxuFr1nA=
X-Received: by 2002:a05:6808:6294:b0:389:72d5:f15f with SMTP id
 du20-20020a056808629400b0038972d5f15fmr1093634oib.10.1680619373128; Tue, 04
 Apr 2023 07:42:53 -0700 (PDT)
MIME-Version: 1.0
References: <20230404082426.3880812-1-rick.wertenbroek@gmail.com>
 <20230404082426.3880812-7-rick.wertenbroek@gmail.com> <d9afc07f-0346-1fe7-907c-261e4c6f92cd@linaro.org>
 <CAAEEuhrnp1QyP498V1wzyLv6KvfRCpNidF9NJpzg+kofWqrJtA@mail.gmail.com> <63d456fa-4db5-96fc-107e-060e59754096@linaro.org>
In-Reply-To: <63d456fa-4db5-96fc-107e-060e59754096@linaro.org>
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Date: Tue, 4 Apr 2023 16:42:17 +0200
Message-ID: <CAAEEuhopfXnCBzAr2avNKuzZG+7ARisse9jd+ydwPCq1U56Sug@mail.gmail.com>
Subject: Re: [PATCH v3 06/11] dt-bindings: PCI: Update the RK3399 example to a
 valid one
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: alberto.dassatti@heig-vd.ch, damien.lemoal@opensource.wdc.com, 
	xxm@rock-chips.com, Shawn Lin <shawn.lin@rock-chips.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Johan Jonker <jbx6244@gmail.com>, Brian Norris <briannorris@chromium.org>, 
	Caleb Connolly <kc@postmarketos.org>, Corentin Labbe <clabbe@baylibre.com>, 
	Judy Hsiao <judyhsiao@chromium.org>, Lin Huang <hl@rock-chips.com>, 
	Arnaud Ferraris <arnaud.ferraris@collabora.com>, Hugh Cole-Baker <sigmaris@gmail.com>, 
	linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_074255_027930_6270F4E8 
X-CRM114-Status: GOOD (  28.86  )
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

T24gVHVlLCBBcHIgNCwgMjAyMyBhdCAzOjI54oCvUE0gS3J6eXN6dG9mIEtvemxvd3NraQo8a3J6
eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3JnPiB3cm90ZToKPgo+IE9uIDA0LzA0LzIwMjMgMTA6
NTgsIFJpY2sgV2VydGVuYnJvZWsgd3JvdGU6Cj4gPiBPbiBUdWUsIEFwciA0LCAyMDIzIGF0IDEw
OjQ14oCvQU0gS3J6eXN6dG9mIEtvemxvd3NraQo+ID4gPGtyenlzenRvZi5rb3psb3dza2lAbGlu
YXJvLm9yZz4gd3JvdGU6Cj4gPj4KPiA+PiBPbiAwNC8wNC8yMDIzIDEwOjI0LCBSaWNrIFdlcnRl
bmJyb2VrIHdyb3RlOgo+ID4+PiBVcGRhdGUgdGhlIGV4YW1wbGUgaW4gdGhlIGRvY3VtZW50YXRp
b24gYSB2YWxpZCBleGFtcGxlLgo+ID4+PiBUaGUgZGVmYXVsdCBtYXgtb3V0Ym91bmQtcmVnaW9u
cyBpcyAzMiBidXQgdGhlIGV4YW1wbGUgc2hvd2VkIDE2Lgo+ID4+Cj4gPj4gVGhpcyBpcyBub3Qg
cmVhc29uIHRvIGJlIGludmFsaWQuIEl0IGlzIHBlcmZlY3RseSBmaW5lIHRvIGNoYW5nZSBkZWZh
dWx0Cj4gPj4gdmFsdWVzIHRvIGRlc2lyZWQgb25lcy4gV2hhdCBpcyBub3QgYWN0dWFsbHkgb2J2
aW91cyBpcyB0byBjaGFuZ2Ugc29tZQo+ID4+IHZhbHVlIHRvIGEgZGVmYXVsdCBvbmUsIGluc3Rl
YWQgb2YgcmVtb3ZpbmcgaXQuLi4KPiA+Cj4gPiBIZWxsbywgdGhlIGV4YW1wbGUgdmFsdWUgPDB4
MCAweDgwMDAwMDAwIDB4MCAweDIwMDAwPjsgaXMgcGxhaW4gd3JvbmcKPiA+IGFuZCB3aWxsIGNy
YXNoIHRoZSBrZXJuZWwuIFRoaXMgaXMgYSB2YWx1ZSB0aGF0IHBvaW50IHRvIGFuIGFkZHJlc3Mg
dGhhdCBmYWxscwo+ID4gaW4gdGhlIEREUiBSQU0gcmVnaW9uIGJ1dCBkZXBlbmRpbmcgb24gdGhl
IGFtb3VudCBvZiBSQU0gb24gdGhlCj4gPiBib2FyZCB0aGlzIGFkZHJlc3MgbWF5IG5vdCBldmVu
IGV4aXN0IChlLmcuLCBib2FyZCB3aXRoIDJHQiBvciBsZXNzKS4KPgo+IFdlIHRhbGsgYWJvdXQg
bWF4LW91dGJvdW5kLXJlZ2lvbnMuCgpPa2F5LCBzb3JyeSwgSSBkaWRuJ3QgZ2V0IHRoYXQsIHlv
dSBhcmUgcmlnaHQsIHRoZXJlIGlzIG5vdGhpbmcgd3Jvbmcgd2l0aCAxNi4KSSdsbCByZW1vdmUg
dGhhdCBjaGFuZ2UgYW5kIGxlYXZlIGl0IGJlLgoKPgo+ID4KPiA+IEFsc28gdGhpcyBhZGRyZXNz
IHJlcXVpcmVzIHBvaW50aW5nIHRvIHdoZXJlIHRoZSBQQ0llIGNvbnRyb2xsZXIgaGFzIHRoZQo+
ID4gd2luZG93cyBmcm9tIEFYSSBQaHlzaWNhbCBzcGFjZSB0byBQQ0llIHNwYWNlLiBUaGlzIGFk
ZHJlc3MgaXMKPiA+IGFsbG9jYXRlZCB3aGVuIHRoZSBTb0MgYWRkcmVzcyBtYXAgaXMgY3JlYXRl
ZCBzbyBpdCBjYW4gb25seSBiZSB0aGF0Cj4gPiBvbmUgdW5sZXNzIHJvY2tjaGlwIHJlZmFicyB0
aGUgU29DIHdpdGggYW5vdGhlciBhZGRyZXNzIG1hcC4KPiA+Cj4gPiBUaGUgZXhhbXBsZSBuZXZl
ciB3b3JrZWQgd2l0aCB0aGUgdmFsdWVzIGdpdmVuIGFzIHJlcG9ydGVkIGJ5IGUuZy4sCj4gPiBo
dHRwczovL3N0YWNrb3ZlcmZsb3cuY29tL3F1ZXN0aW9ucy83MzU4NjcwMy9kZXZpY2UtdHJlZS1p
c3N1ZXMtd2l0aC1yb2NrcHJvNjQtcGNpZS1lbmRwb2ludAo+ID4gYW5kIGhlcmUgdGhleSBzZXQg
aXQgdG8gMCAoYmFzZSBvZiB0aGUgRERSLCB3aGljaCBpcyBhICJ2YWxpZCIgYWRkcmVzcwo+ID4g
YXMgdG8gaXQgZXhpc3RzIGV2ZW4gb24gYm9hcmRzIHdpdGggbGVzcyB0aGFuIDJHQikgYnV0IGl0
IGlzIHN0aWxsIHdyb25nCj4gPiB0byBkbyBzby4KPgo+IEFnYWluLCBteSBjb21tZW50IHdhcyB1
bmRlciBtYXgtb3V0Ym91bmQtcmVnaW9ucywgbm90IHVuZGVyIHNvbWUgb3RoZXIKPiBwaWVjZXMu
IERvZXMgdGhpcyBhbGwgYXBwbHk/Cj4KPiBCZXN0IHJlZ2FyZHMsCj4gS3J6eXN6dG9mCj4KCkkn
bGwgcmVtb3ZlIHRoZSBjaGFuZ2UgdG8gdGhlIG1heC1vdXRib3VuZC1yZWdpb25zLCBpdCBpcyBu
b3QgbmVlZGVkLgpJJ2xsIHBsYWNlIHRoZSByZWdpc3RlcnMgYXMgc2Vjb25kIHBhcmFtZXRlciwg
Ym90aCBvbiB0aGUgZHRzaSBlbnRyeSBhbmQgaGVyZS4KSSdsbCBrZWVwIHRoZSBjaGFuZ2UgdG8g
dGhlIHJlZ2lzdGVyIHZhbHVlIGJlY2F1c2UgaXQgaXMgbmVjZXNzYXJ5IGFsb25nCndpdGggdGhl
IGFkZGVkIHBpbmN0cmwuCgpUaGlzIHdpbGwgc2ltcGxpZnkgdGhlIHBhdGNoLCBhdm9pZCB1bm5l
Y2Vzc2FyeSBjaGFuZ2VzLCBhbmQgbWFrZQp0aGluZ3MgY2xlYXJlci4KClNvcnJ5IGZvciB0aGUg
bWlzdW5kZXJzdGFuZGluZy4KUmVnYXJkcywKUmljawoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
