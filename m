Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63C78E7718B
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Dec 2024 07:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HUQMpDYqCifcUzOyaoUsVD7c0JLmz2oxBwx5TOyM2Ps=; b=RdP8XOuqC14x2L
	MCe/oCYuzWOUeN2Ug8lZur/5wdR7JW2kVnlkS5N5FufEYNNWrIYcuPLW1y+EhIU+upAXrYAn/2Bvv
	TI1II4/WkssKsM+bOwHfkGG5ON2PZhJ9s5CA5h9qODX3AaVfCkHj7mUEwl0LCq76p94IIvh387MQB
	QYQFknauI+VXDyVtcwmTxk++uUo2BKB1tcmc4hal3UbRdMuORmo/lmr3+geON5ED1XfJM93v8stCw
	VdPaqngcIg69SRiKR+jFyJ9uIBqrXmzu/EQD99PIzq6+xkxRd5+mIfcyvzV/vfNNOR2OZEfbI/1D9
	rVMQ7aH4yxXR9J02mOrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tR50l-0000000HI30-1yKG;
	Fri, 27 Dec 2024 07:43:55 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tR4zJ-0000000HHhk-3ZzT;
	Fri, 27 Dec 2024 07:42:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 347DCA411F6;
	Fri, 27 Dec 2024 07:40:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7F12C4CED0;
	Fri, 27 Dec 2024 07:42:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735285344;
	bh=gWGtyTFJgaJffoNbyeoot1oowobuuGFBuEE706eXXAY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qMZoBBxNRZ0HOYa16X5nrRft1gmuBLRNSQgDrV8mr48hlue8N4A48mECoBrQ6KqBj
	 cSOJwgelgfq6mTKLp3qsdvDeMOfPsIahlt8Kq4SuM1h+QzBaIYkT+/zJst9gsaj6KL
	 RxhaEIvh9VR/4xCFmD76gyFYjnTzxNKKx2Rd/RLWwDcYl53SVfOAj3wHGSxQgh67+Z
	 T89Rbc0BTNLGXmSFKJQYIGzVrNaLf6kxVUHtbqjXpvIQ2RfHFsrWJu0C5DhR4fpfiC
	 2Mbib+jRsaJ3YVrfekxhzc9Z20Lxu9h3KCvFNA5y3h/u0DdEHuvPg+G8rPezsk1Ys+
	 LgJypTgfPDK5A==
Date: Fri, 27 Dec 2024 08:42:21 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <ukleinek@kernel.org>
Cc: Kever Yang <kever.yang@rock-chips.com>, heiko@sntech.de, 
	linux-rockchip@lists.infradead.org, linux-pwm@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 11/17] dt-bindings: pwm: rockchip: Add
 rockchip,rk3562-pwm
Message-ID: <xq67rd3a6yeie3kajdnzufbxctqxmv2h3ufhqauoqmxe3hk2oa@vnru4lmtpkm3>
References: <20241224094920.3821861-1-kever.yang@rock-chips.com>
 <20241224094920.3821861-12-kever.yang@rock-chips.com>
 <qvr7x4anlxxtpxjywrqjihxyxejw4i73wrh2ibl3hasayew4s2@obyuxce4ez4g>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <qvr7x4anlxxtpxjywrqjihxyxejw4i73wrh2ibl3hasayew4s2@obyuxce4ez4g>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241226_234225_959915_614591F0 
X-CRM114-Status: UNSURE (   9.67  )
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

T24gRnJpLCBEZWMgMjcsIDIwMjQgYXQgMDg6MjQ6MTVBTSArMDEwMCwgVXdlIEtsZWluZS1Lw7Zu
aWcgd3JvdGU6Cj4gT24gVHVlLCBEZWMgMjQsIDIwMjQgYXQgMDU6NDk6MTRQTSArMDgwMCwgS2V2
ZXIgWWFuZyB3cm90ZToKPiA+IEFkZCByb2NrY2hpcCxyazM1NjItcHdtIGNvbXBhdGlibGUgc3Ry
aW5nLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBLZXZlciBZYW5nIDxrZXZlci55YW5nQHJvY2st
Y2hpcHMuY29tPgo+IAo+IFdoYXQgaXMgeW91ciBtZXJnZSBwbGFuIGhlcmU/IEZyb20gbXkgUE9W
IG1lcmdpbmcgdGhlIHB3bSB1cGRhdGUgdmlhIG15Cj4gcHdtIHRyZWUgd291bGQgYmUgdGhlIGVh
c2llc3QuIEJ1dCBpZiB5b3Ugd2FudCB0byBsZXQgaXQgZ28gdmlhIChzYXkpCgoKTm8gY2x1ZSwg
YnV0IHdlIGFscmVhZHkgcHJvdmlkZWQgZmVlZGJhY2sgdGhpcyBpcyBzdXBwb3NlZCB0byBiZSBz
cGxpdApwZXIgc3Vic3lzdGVtLiBOb3QgbXVjaCBpbXByb3ZlZC4KCkJlc3QgcmVnYXJkcywKS3J6
eXN6dG9mCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
