Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30AE2C74A44
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Mar 2023 08:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SUnhEtzO4pUhkXuZkVmRGBmGwgZkJzRB0ttvBlCy7yQ=; b=mLSzBMzOihGF+D
	TJ4SGwb2TSdeQ4dkQS6L86cJbSn891/fVlvZkm+CbR7KiEPC+niK794ZxzygcVGIhsddRvfWnrJ9e
	XoQOBk59hnmaIfrX5oQRWLi1uWgIFijRYje6XO6hx3KBNC5wY3KJdY8E+jgbjiLtUSzvEWbub1M2S
	G+ZmsbyNr1DIL+/9HXrxXiD30kZnn9rJGnKMx649maBHkoffh4MeP5bV5EH02gTU23jBer49NiMdx
	PnWTG1SpKbLTr5Uq8vww5JfKckf4sRZ9rNbkeMC4XcokSPWbJP/k1Gi+slMtSlWf5QRW+CjmRopLs
	o8bLf7etciG3U+Tbn2Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paXpy-00DZ05-W8; Fri, 10 Mar 2023 08:10:51 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paXox-00DYUZ-Rx; Fri, 10 Mar 2023 08:09:49 +0000
Received: from [192.168.86.246] (cpc87451-finc19-2-0-cust61.4-2.cable.virginm.net [82.11.51.62])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: tanureal)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 6D9FA6603054;
	Fri, 10 Mar 2023 08:09:46 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1678435786;
	bh=nT15Xbs9vT95ITlLy4r3nhiWPDIIClF7WiwooWXw7Ag=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=GFiuCDeex5zkkrnzJVSJ7vT2Tfnek/kZnxeJTxlpn8vVd9eHrsnMupt9h+bJFSUmy
	 FO11FGjNq9t0rN6lrZm8zhpKEghlj+y1m7TxP7ftluCFz7kNxf6UhR44im+8ybdkuV
	 A2B7UUIszRUN/68jErlP+TqMiKH+vQ8TmhedkZDacR/24Kw6coAKCie1u6TA4JpQrg
	 i2V3sSnnKRt9pY0Czene3TviXQk1oSG1Tsp2622qz81DRDwpJObF1J1KsRXu+pbw3k
	 moy8J+w48JADGyTEZeY5eTUha19oLcNVMHvGgctqmlbejA3mDLykf19PDw89E4b63i
	 XWD/EMfGzLfEQ==
Message-ID: <9e3fa2ad-6293-ef50-02f0-b106a363eb8c@collabora.com>
Date: Fri, 10 Mar 2023 08:09:44 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH RFC 0/5] arm64: rockchip: enable PCIE3 controller and its
 phy for Rock5B boards
Content-Language: en-US
To: Qu Wenruo <wqu@suse.com>, Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Peter Geis <pgwipeout@gmail.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
References: <cover.1675498628.git.wqu@suse.com>
 <583D2908-ECED-4226-A6CD-683F0D5BEA71@gmail.com>
 <4b28da3e-9126-8409-dd9c-3899762e28bb@suse.com>
 <7A70CB52-1892-4455-B419-AD00298DE7B5@gmail.com>
 <CAMdYzYovDsiw5zwMvPbLaVcfpryX6K7r2zuVUVkAtYxiwzKGUQ@mail.gmail.com>
 <20230221214517.5rjtwpftcj5dugdl@mercury.elektranox.org>
 <CAMdYzYoWAjRQPCy_cuYH5VpMfnVR2_H+1-MNSKv0w6j-NpbORw@mail.gmail.com>
 <A539A994-7E2C-4B51-8BAB-32AE475607DD@gmail.com>
 <dff133d1-6a8b-a838-4c85-a8bb16c7a742@suse.com>
 <6024BC59-B1ED-441C-97F8-73688022F899@gmail.com>
 <d701239f-f844-e504-211e-d88de0ddac8d@suse.com>
From: Lucas Tanure <lucas.tanure@collabora.com>
In-Reply-To: <d701239f-f844-e504-211e-d88de0ddac8d@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230310_000948_064610_403F25F6 
X-CRM114-Status: GOOD (  16.77  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMTAtMDMtMjAyMyAwMDoxNiwgUXUgV2VucnVvIHdyb3RlOgo+IAo+IAo+IE9uIDIwMjMvMy85
IDIxOjAwLCBQaW90ciBPbmlzemN6dWsgd3JvdGU6Cj4+Cj4+Cj4+PiBXaWFkb21vxZvEhyBuYXBp
c2FuYSBwcnpleiBRdSBXZW5ydW8gPHdxdUBzdXNlLmNvbT4gdyBkbml1IDA5LjAzLjIwMjMsIAo+
Pj4gbyBnb2R6LiAxMzoxNzoKPj4+Cj4+Pgo+Pj4KPj4+IEF3ZXNvbWUhIEkgY2FuIGZpbmFsbHkg
Z2V0IHJpZCBvZiB0aGUgc3R1cGlkIG91dC1vZi10cmVlIHI4MTI1IGRyaXZlci4KPj4+Cj4+PiBX
b3VsZCBkZWZpbml0ZWx5IGhhdmUgYSBnb29kIGxvb2sgaW50byB0aGUgcGF0Y2hlcyBhbmQgcHJv
dmlkZSBzb21lIAo+Pj4gZmVlZGJhY2tzLCBqdXN0IG1pbmQgdG8gc2hhcmUgYSBnaXQgdHJlZSBm
b3IgZWFzaWVyIHJldmlld2luZz8KPj4+Cj4+Pgo+Pgo+PiBBaCAtIGdpdCB0cmVlLi4uIG15IGRp
c3RybyBidWlsZGVyIHVzZXMgbW9kZWwgd2l0aDogbWFpbmxpbmUgc3JjICsgCj4+IHBhdGNoZXMg
LSBzbyBlZmZlY3RpdmVseSBpIGRvbuKAmXQgaGF2ZSBnaXQgdHJlZSBmb3IgdGhpcyBjb2Rl4oCm
Cj4+Cj4gCj4gVGhlIEFCUyBpcyBmaW5lIGlmIHRoZSBudW1iZXIgb2YgcGF0Y2hlcyBpcyBzbWFs
bCwgYnV0IHdoZW4gcGF0Y2hlcyBnbyAKPiBsYXJnZXIgaXQgY2FuIGdvIGEgbGl0dGxlIG91dCBv
ZiBjb250cm9sLgo+IAo+IE5ldmVyIG1pbmQsIEkgY2FuIHN0aWxsIGZldGNoIHRoZSBwYXRjaGVz
IGFuZCBmaW5kIG91dCB3aGF0J3MgdGhlIAo+IGRpZmZlcmVuY2UgZm9yIHRoZSBQQ0lFMiBuYW5l
bmcgY29tYm8gcGh5Lgo+IAo+IEp1c3QgdG8gbWVudGlvbiwgc29tZSBrZXJuZWwgQVVSIGFsc28g
Z28gZ2l0IHRyZWUgdG8gc2ltcGxpZnkgdGhlIFBLR0JVSUxELgo+IAo+IFRoYW5rcywKPiBRdQpI
aSwKCkkganVzdCBzZW50IGEgcGF0Y2ggc2VyaWVzIHRvIHN1cHBvcnQgUENJZTIgZm9yIFJLMzU4
OHM6Cmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvMjAyMzAzMTAwODA1MTguNzgwNTQtMS1s
dWNhcy50YW51cmVAY29sbGFib3JhLmNvbS9ULyN0CgpUaGUgc2FtZSBwYXRjaGVzIGFyZSBoZXJl
OgpodHRwczovL2dpdGxhYi5jb2xsYWJvcmEuY29tL2hhcmR3YXJlLWVuYWJsZW1lbnQvcm9ja2No
aXAtMzU4OC9saW51eC8tL3RyZWUvd2lwX3BjaWUyX3JrMzU4OAoKVGhhbmtzCkx1Y2FzCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
