Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 843BAC77B75
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 May 2023 17:35:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:From:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vmdz1NDGPKIGGFribXkrbomFTSoLuOMusW89YJ1AwSc=; b=YV/3keIK5UUdxE
	KZ52Yg2js0h1NrghXkaUfcKTWp5GaWuoAPdiPg20PBpOH8WhXwpkW5Fm+qgkAfz3I6YHeSZeoWehF
	8Qk4HTbFeYIZqeyN7XM9JErd1fhiBaSpjfJKz4PdU+kMYidlnmu2ErFUbCQI547MBr86kzKRm+mXx
	RfumU2KABPRTy1QkpPigoT2RJ1L/V/+4NkstVd15aHU3Mk96BU3kBTGVdV9FxjQFscMbmbaVu/9Aa
	qg56QVfqxWhXMa2L4AS4OGVIh9CskWyhqcsALxkmrGuIbckkg536xKXlrSppoENPScraewVUbZH3B
	UVY5Ns7Mv5be/kWnU9Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1VuY-00AzI7-0x;
	Tue, 23 May 2023 17:35:02 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Uwe-00AoQ4-02
	for linux-rockchip@bombadil.infradead.org;
	Tue, 23 May 2023 16:33:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=References:Content-Type:
	Content-Transfer-Encoding:In-Reply-To:From:To:Subject:MIME-Version:Date:
	Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description;
	bh=6ly9wIL9GCnm3HKaNYcOLEDpYNmzAKCxkqchFnnDXMU=; b=TGdpOKAS5ohebdUhsAxYhyj4YR
	occhZzafH/2Q31QwgZ+mlGfipUwbjE3M0A2CZ8HOnNccUaKi2oeNObVAIYhgOjerkH6BkXqhHFpZq
	DX3FL4Ls6oqDruGakh9+mUi8CYlgszuEwPOMyMwhze4Tt+TsHScrSdcPp0hBPlxa2zSMyPprPGhZb
	4uUPvVWmOa8p0PrZUnbBw3r/nhqU50o25gcYLNPmTUVbRy78pZnmC4PkbETtWe0Tf6ZrqplrpXOJ/
	RLRccxMk0jTbARHjXKiT3hHv9uZOJ6fI9tF8L+ClUimU2Hq0Tal8Jfe8oLcfjgJIMkV/NUvdQG0zn
	AWRXYXVg==;
Received: from mailout1.w1.samsung.com ([210.118.77.11])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1UwZ-003Zrh-00
	for linux-rockchip@lists.infradead.org;
	Tue, 23 May 2023 16:33:06 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
	by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id 20230523163254euoutp016385578949ece782f10c77a883f6e7e5~h0tsZGjGo2585525855euoutp01Q
	for <linux-rockchip@lists.infradead.org>; Tue, 23 May 2023 16:32:54 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com 20230523163254euoutp016385578949ece782f10c77a883f6e7e5~h0tsZGjGo2585525855euoutp01Q
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1684859574;
	bh=6ly9wIL9GCnm3HKaNYcOLEDpYNmzAKCxkqchFnnDXMU=;
	h=Date:Subject:To:From:In-Reply-To:References:From;
	b=VphoBJOzcgVObfyJB957A8g8l5hIGtiA6KFuR5BUyC59GYm5F09dJ88Lbrtiq88Pq
	 g0wyWWF9k2RjsHdIMujgspYCc8Xz//U/gFIqEag3y93VcGfzcIACGAPWx/GEOqGHJo
	 pSVCTuIffc6jZMIN/0MSGG08VVVZBLYtoG9Ug8f0=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTP id
	20230523163253eucas1p2c5177a1e7e93fe3d9fa87ee0fafc02a0~h0tsG0Z8V2905229052eucas1p2r;
	Tue, 23 May 2023 16:32:53 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
	eusmges1new.samsung.com (EUCPMTA) with SMTP id D0.1C.42423.5BAEC646; Tue, 23
	May 2023 17:32:53 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
	20230523163253eucas1p1b0d2f9d80f322d73ab8e41f9e47e4ac8~h0trmMojV2723827238eucas1p17;
	Tue, 23 May 2023 16:32:53 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
	eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
	20230523163253eusmtrp15f0e63a4a12cc61ec30b5ac77af49cd6~h0trleCw13139931399eusmtrp1F;
	Tue, 23 May 2023 16:32:53 +0000 (GMT)
X-AuditID: cbfec7f2-a51ff7000002a5b7-0f-646ceab5b15c
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
	eusmgms1.samsung.com (EUCPMTA) with SMTP id D3.A5.10549.5BAEC646; Tue, 23
	May 2023 17:32:53 +0100 (BST)
Received: from [106.210.134.192] (unknown [106.210.134.192]) by
	eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20230523163252eusmtip136f83238e5596f3273d034aaa1a4a744~h0tq5Bcdx0414504145eusmtip1L;
	Tue, 23 May 2023 16:32:52 +0000 (GMT)
Message-ID: <6040ad05-2894-6302-20db-0b0ff3fb0f0c@samsung.com>
Date: Tue, 23 May 2023 18:32:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0)
	Gecko/20100101 Thunderbird/102.10.1
Subject: Re: [PATCH v2] media: verisilicon: Fix crash when probing encoder
Content-Language: en-US
To: Michael Tretter <m.tretter@pengutronix.de>, Linux regressions mailing
	list <regressions@lists.linux.dev>, Diederik de Haas
	<didi.debian@cknow.org>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>, Benjamin Gaignard
	<benjamin.gaignard@collabora.com>, p.zabel@pengutronix.de,
	mchehab@kernel.org, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel@collabora.com, hverkuil-cisco@xs4all.nl, Pengutronix Kernel Team
	<kernel@pengutronix.de>
From: Marek Szyprowski <m.szyprowski@samsung.com>
In-Reply-To: <20230523145430.GB9943@pengutronix.de>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrCKsWRmVeSWpSXmKPExsWy7djP87pbX+WkGNz6qmmx5cpsZovWV8/Z
	LTa++MxicXHmXRaLzed6WC1WTd3JYnF51xw2i54NW1ktPj34z2yxbcU5Votlm/4wWez6co/N
	4u69EywWG992sDvweZz4f4TFY8fdJYwem1Z1snlsXlLv8WLzTEaP/r8GHl1HrrN5fN4k53Hq
	62f2AM4oLpuU1JzMstQifbsEroyXmw4wFRwXrZh0lL+BcYtgFyMnh4SAicTXR4uYuhi5OIQE
	VjBKrDnZB+V8YZRovf2MHcL5zCjxv6ObBaal5fccZojEckaJv7vns0I4Hxkl/qycD1bFK2An
	sW7XV0YQm0VAVWLN/T9MEHFBiZMzn4DViAqkSqzafJEZxBYW8JJYNm0LO4jNLCAucevJfLA7
	RARWs0hM3HkErIFNwFCi620XG4jNKWAsMefeZSaIBnmJ5q2zwU6SEJjPKXFywj1miFtdJKbu
	WswKYQtLvDoOsUFCQEbi9OQeFoiGdkaJBb/vM0E4ExglGp7fYoSospa4c+4X0DoOoBWaEut3
	6UOEHSXuP5nIDhKWEOCTuPFWEOIIPolJ26YzQ4R5JTrahCCq1SRmHV8Ht/bghUtQp3lIbL79
	mHkCo+IspHCZheT/WUhem4VwwwJGllWM4qmlxbnpqcWGeanlesWJucWleel6yfm5mxiBCe/0
	v+OfdjDOffVR7xAjEwfjIUYJDmYlEd4T5dkpQrwpiZVVqUX58UWlOanFhxilOViUxHm1bU8m
	CwmkJ5akZqemFqQWwWSZODilGpga9vyR+LpMIvDOO8ZDcpGuFWzPEzeWSjAs7HW2UPtt7Wo3
	KfHJthtfpn1L5HcWPGvG/VnhSNbFc/Hv0uUK7bgFjr2YoVBYaM6dfjQ46GTPom2hk29NXlDt
	fHbH/4vxJVq+1myOVfwM/zc8MXowU6kuM3Vefc2DCcunB3U73jWTa/BUs5BeobHS8qn+E5Y4
	u8Wxe4t38hZs4dnRcdVB2MIh4EBI1Kv0O6z1fL84bNYWt9eLRLZUGC969JuXXeWRycOP+3w6
	a8KFe8/0/P/oee+SxovS1axTWKLlV746aeP82pk74UOff9OpLxMeHZhzemK2n/SmVUc4d2//
	8vxDy/cz31U3vDXVvnHj17T+y4eUWIozEg21mIuKEwHKujr25wMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrFIsWRmVeSWpSXmKPExsVy+t/xu7pbX+WkGKw4zmax5cpsZovWV8/Z
	LTa++MxicXHmXRaLzed6WC1WTd3JYnF51xw2i54NW1ktPj34z2yxbcU5Votlm/4wWez6co/N
	4u69EywWG992sDvweZz4f4TFY8fdJYwem1Z1snlsXlLv8WLzTEaP/r8GHl1HrrN5fN4k53Hq
	62f2AM4oPZui/NKSVIWM/OISW6VoQwsjPUNLCz0jE0s9Q2PzWCsjUyV9O5uU1JzMstQifbsE
	vYyXmw4wFRwXrZh0lL+BcYtgFyMnh4SAiUTL7znMXYxcHEICSxklFn9bzQiRkJE4Oa2BFcIW
	lvhzrYsNoug9o8TG+UvYQRK8AnYS63Z9BWtgEVCVWHP/DxNEXFDi5MwnLCC2qECqxMmlN8Bs
	YQEviWXTtoD1MguIS9x6Mp8JZKiIwFoWibvX1rBDbHjLJNG6ZC1YB5uAoUTXW5DVnBycAsYS
	c+5dZoLoNpPo2trFCGHLSzRvnc08gVFwFpLls5AsmYWkZRaSlgWMLKsYRVJLi3PTc4sN9YoT
	c4tL89L1kvNzNzECI3nbsZ+bdzDOe/VR7xAjEwfjIUYJDmYlEd4T5dkpQrwpiZVVqUX58UWl
	OanFhxhNgSEwkVlKNDkfmErySuINzQxMDU3MLA1MLc2MlcR5PQs6EoUE0hNLUrNTUwtSi2D6
	mDg4pRqYEnbHcEhu/x59/Yz9N/Ge1L7kLYtudqc/uMszSyojK0eKk3dfJK9X0tpJ8w7Eddoe
	1N284ud8wdPPeaaZpjB/nm/3L6PAMETt+nGD01Xu9y4IOa7kmNoRMHdbE++K7JepQR73TkS+
	usF3pGE+99LiuWueRmxqmFS40cyOreLbtxUzGHr1LtvlBrjwrFEWjlp9aVn6N7PbRyYur12Z
	9q6myLZpd9jS3o2GX5y5zvzSdJo680LNQesw71T1H2kMcWdux7dbME5aeSRKfudDBW7O3tOs
	Rw5MTr+943Z5+5Pq0vPq8uKm87f+Mvy0+/fSY5tq5pw9u3mV+aFvvmpPOQo5PyjyL68y3jpZ
	UbO9qrOLTYmlOCPRUIu5qDgRAPks+idtAwAA
X-CMS-MailID: 20230523163253eucas1p1b0d2f9d80f322d73ab8e41f9e47e4ac8
X-Msg-Generator: CA
X-RootMTR: 20230523145444eucas1p2fd56ca86c1c68abc89deec532a3588fb
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20230523145444eucas1p2fd56ca86c1c68abc89deec532a3588fb
References: <20230413104756.356695-1-benjamin.gaignard@collabora.com>
	<4995215.LvFx2qVVIh@bagend>
	<7c1bf9c4-f14b-30cd-2610-871f5f512d06@collabora.com>
	<12724349.O9o76ZdvQC@bagend>
	<5d871928-dcd5-3f27-e975-d1639525dad0@leemhuis.info>
	<CGME20230523145444eucas1p2fd56ca86c1c68abc89deec532a3588fb@eucas1p2.samsung.com>
	<20230523145430.GB9943@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_173303_314540_FB1ACD02 
X-CRM114-Status: GOOD (  19.10  )
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

T24gMjMuMDUuMjAyMyAxNjo1NCwgTWljaGFlbCBUcmV0dGVyIHdyb3RlOgo+IE9uIFR1ZSwgMjMg
TWF5IDIwMjMgMTI6NTA6NDIgKzAyMDAsIExpbnV4IHJlZ3Jlc3Npb24gdHJhY2tpbmcgKFRob3Jz
dGVuIExlZW1odWlzKSB3cm90ZToKPj4gQ0NpbmcgdGhlIFJlZ3Jlc3Npb24gbGlzdCBhbmQgYSBi
dW5jaCBvZiBvdGhlciBwZW9wbGUgdGhhdCB3ZXJlIENDZWQgaW4KPj4gdGhyZWFkcyB0aGF0IGxv
b2sgcmVsYXRlZDoKPiBUaGFua3MhCj4KPj4gT24gMjMuMDUuMjMgMDA6MzgsIERpZWRlcmlrIGRl
IEhhYXMgd3JvdGU6Cj4+PiBPbiBNb25kYXksIDIyIE1heSAyMDIzIDE4OjE3OjM5IENFU1QgQmVu
amFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4+Pj4gTGUgMjAvMDUvMjAyMyDDoCAwMDozNCwgRGllZGVy
aWsgZGUgSGFhcyBhIMOpY3JpdCA6Cj4+Pj4+IE9uIFRodXJzZGF5LCAxMyBBcHJpbCAyMDIzIDIx
OjUyOjUwIENFU1QgTmljb2xhcyBEdWZyZXNuZSB3cm90ZToKPj4+IFsuLi5dCj4+Pj4+IFdoZW4g
SSBib290ZWQgaW50byBteSA2LjQtcmMxIChidXQgYWxzbyByYzIpIGtlcm5lbCBvbiBteQo+Pj4+
PiBQaW5lNjQgUXVhcnR6NjQgTW9kZWwgQSwgSSBub3RpY2VkIGEgY3Jhc2ggd2hpY2ggc2VlbXMg
dGhlIHNhbWUgYXMKPj4+Pj4gYWJvdmUsIGJ1dCBJIGRpZG4ndCBoYXZlIHN1Y2ggYSBjcmFzaCB3
aXRoIG15IDYuMyBrZXJuZWwuCj4+Pj4+IFNlYXJjaGluZyBmb3IgJ2hhbnRybycgbGVkIG1lIHRv
IHRoaXMgY29tbWl0IGFzIHRoZSBtb3N0IGxpa2VseSBjdWxwcml0Cj4+Pj4+IGJ1dCB3aGVuIEkg
YnVpbGQgYSBuZXcgNi40LXJjWCBrZXJuZWwgd2l0aCB0aGlzIGNvbW1pdCByZXZlcnRlZCwKPj4+
Pj4gSSBzdGlsbCBoYWQgdGhpcyBjcmFzaC4KPj4+Pj4gRG8geW91IGhhdmUgc3VnZ2VzdGlvbnMg
d2hpY2ggY29tbWl0IHdvdWxkIHRoZW4gYmUgdGhlIGxpa2VseSBjdWxwcml0Pwo+Pj4+IFRoaXMg
cGF0Y2ggZml4IHRoZSBjcmFzaCBhdCBib290IHRpbWUsIHJldmVydCBpdCBkb2Vzbid0IHNlZW0g
dG8gYmUgdGhlCj4+Pj4gc29sdXRpb24uIE1heWJlIHRoaXMgcHJvcG9zYWwgZnJvbSBNYXJlayBj
YW4gaGVscCB5b3UgPwo+Pj4+Cj4+Pj4gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9q
ZWN0L2xpbnV4LW1lZGlhL3BhdGNoLzIwMjMwNDIxMTA0NzU5LjIyMzY0NjMtMS1tLnN6eXByb3dz
a2lAc2Ftc3VuZy5jb20vCj4+PiBUaGF0IGhlbHBlZCA6KSBBZnRlciBhcHBseWluZyB0aGF0IHBh
dGNoIEkgbm8gbG9uZ2VyIGhhdmUgdGhlIGNyYXNoLgo+Pj4gVGhhbmtzIQo+PiBUaGF0IHJlZ3Jl
c3Npb24gZml4IGlzIG5vdyBhIG1vbnRoIG9sZCwgYnV0IG5vdCB5ZXQgbWVyZ2VkIGFmYWljcyAt
LQo+PiBndWVzcyBkdWUgdG8gTmljb2xhcyBjb21tZW50IHRoYXQgd2Fzbid0IGFkZHJlc3NlZCB5
ZXQgYW5kIGxpa2VseQo+PiByZXF1aXJlcyBhIHVwZGF0ZWQgcGF0Y2guCj4gSSBhZ3JlZSB3aXRo
IE5pY29sYXMgY29tbWVudCBvbiB0aGF0IHBhdGNoIGFuZCBpdCBuZWVkcyB0byBiZSB1cGRhdGVk
Lgo+Cj4+IE1pY2hhZWwgYWZhaWNzIGEgd2VlayBhZ28gcG9zdGVkIGEgcGF0Y2ggdGhhdCB0byBt
eSAqdmVyeSBsaW1pdGVkCj4+IHVuZGVyc3RhbmRpbmcgb2YgdGhpbmdzKiAoSSBob3BlIEkgZG9u
J3QgY29uZnVzZSBtYXR0ZXJzIGhlcmUhKSBzZWVtcyB0bwo+PiBhZGRyZXNzIHRoZSBzYW1lIHBy
b2JsZW0sIGJ1dCBzbGlnaHRseSBkaWZmZXJlbnRseToKPj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvYWxsLzIwMjMwNTE2MDkxMjA5LjMwOTgyNjItMS1tLnRyZXR0ZXJAcGVuZ3V0cm9uaXguZGUv
Cj4gQ29ycmVjdCwgbXkgcGF0Y2ggYWRkcmVzc2VzIHRoZSBzYW1lIHByb2JsZW0uCj4KPj4gTm8g
cmVwbHkgeWV0Lgo+Pgo+PiBUaGF0J3MgYWxsIGEgYml0IHVuZm9ydHVuYXRlLCBhcyBpdCdzIG5v
dCBob3cgcmVncmVzc2lvbiBmaXhlcyBzaG91bGQgYmUKPj4gZGVhbHQgd2l0aCAtLSBhbmQgY2F1
c2VkIG11bHRpcGxlIHBlb3BsZSBoZWFkYWNoZXMgdGhhdCBjb3VsZCBoYXZlIGJlZW4KPj4gYXZv
aWRlZC4gOi0vCj4+Cj4+IEJ1dCB3ZWxsLCB0aGluZ3MgaGFwcGVuLiBCdXQgaXQgbGVhZHMgdG8g
dGhlIHF1ZXN0aW9uOgo+Pgo+PiBIb3cgY2FuIHdlIGZpbmFsbHkgYWRkcmVzcyB0aGUgaXNzdWUg
cXVpY2tseSBub3cgdG8gZW5zdXJlIGlzIGRvZXNuJ3QKPj4gY2F1c2UgaGVhZGFjaGVzIGZvciBl
dmVuIG1vcmUgcGVvcGxlPwo+Pgo+PiBNYXJlaywgTWljaGFlbCwgY291bGQgeW91IHdvcmsgb24g
YSBwYXRjaCB0b2dldGhlciB0aGF0IHdlIHRoZW4gZ2V0Cj4+IHNvbWV3aGF0IGZhc3QtdHJhY2tl
ZCB0byBMaW51cyB0byBhdm9pZCBoaW0gZ2V0dGluZyBldmVuIG1vcmUgdW5oYXBweQo+PiBhYm91
dCB0aGUgc3RhdGUgb2YgdGhpbmdzWzFdPwo+IE1hcmVrLCBpZiB5b3UgaGF2ZSBhbiB1cGRhdGVk
IHBhdGNoLCBJIHdpbGwgaGFwcGlseSB0ZXN0IGFuZCByZXZpZXcgaXQuCj4gT3RoZXJ3aXNlLCBw
bGVhc2UgdGFrZSBhIGxvb2sgYXQgbXkgcGF0Y2guCgpHbyBhaGVhZCB3aXRoIHlvdXIsIG15IHdh
cyBqdXN0IGEgYmxpbmQgdHJ5IGVsaW1pbmF0aW5nIHRoZSBvb3BzIGR1cmluZyAKZHJpdmVyIHBy
b2JlLgoKCkJlc3QgcmVnYXJkcwotLSAKTWFyZWsgU3p5cHJvd3NraSwgUGhEClNhbXN1bmcgUiZE
IEluc3RpdHV0ZSBQb2xhbmQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
