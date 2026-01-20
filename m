Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45144D2ECF7
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jan 2026 10:26:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yr/alNCoNNsKI5SnFT50jizsklt8xMNMMFh5xedfOWw=; b=bGkHRncQzMCmPm
	SQVZpq30LSrAXQrlJiCwY1o3Cj6I0x7wD/hUOjVuOMefDNoP7If6R/j51c+x7WdOrc5r6Jqu7hCJD
	D0f4xU9FBJXWsbJUe8OZ5JMQ7Aj/OTh93YHRqZ3QxWQJcobaOxGP4B/hq4DcJA0FC4urK05aIh7ez
	I1hwEx8lsqWkRgNPzqnaOHJvucBAa35MbmEd8MiK0EJNmIc2p4FLmPS+3oGzc/jm2LBDvnzOUjp1i
	MDXQXuMrUxz85+hcqekM5EqPjKFWGhicY0sv2By/kKQblKV2D3WQivkM/wd4/eZyPdQ+HpIJE6Bf2
	Nt/zorKPqQEkpZ06XfqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi8wI-00000003cTS-1jEZ;
	Tue, 20 Jan 2026 10:26:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi8wH-00000003cTC-03tT;
	Tue, 20 Jan 2026 10:26:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=9diJR4kQZN+k/wbWqdTO6OI+/69IKXx1J/s9tKfVwNY=; b=CufrPNFGtGYAC2vp81NYi+94qK
	BxLn2slte26KKpwsFSIk0g55aZekQs7QU8SRO/gXrJqPt+qDmWB11BUH0Eh5lbNGTsoUl+awcXeIf
	cckPSxIm1iU6rsrVc8W0Tx9rde4iTXSpLMxHhyRXhorYQHg/fhkHueb87+b5tLXO8CL5Lx2pjuOEA
	/20oaZ9P7va0r3UhN1PO1MHnU+QUFkQSTVn6Tlk5nvEq7P/X6k7dyJzLgAjtzlIsOuYayjn/B9GKV
	TpSaVYfCNvCx3ctINAZR0A4BBrRJ4gtrZQTMX5njt8yDBgb8RCfqfjqzea4Y5haXYknN71kOLVgad
	6d2WY3gg==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi8wD-0000000Dnk8-3ytj;
	Tue, 20 Jan 2026 10:26:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=9diJR4kQZN+k/wbWqdTO6OI+/69IKXx1J/s9tKfVwNY=; b=XSPs81KHpZHhgt4vtOmZ7ONpWU
	Tzy1oFkhZq1dlMTqezc1Wp9D+9yA9sUuuBvcclPnRRb+r58xL8GsH+5a+RREbLfVd6N4FpoxBlDOs
	kqhk7o4uqD5ckBIWQmcW2nY+LC6w4h5oflfemO6nHeTZJxM/A4puTk1SIF7bF3RZnY3I43vNWgF3D
	R3BExg8bBa6b4Ki6C8sdL1FM+Se4MssShty8MlMnExKElAMOZQySHhLDIkTDsphbqwUaGd4Jz1fCM
	w96x4RqiTQe1XLY4K8po3yd5Pzhq6NHJORLR/4GFeQ8gi1mPdgM3bJlZh7xJJgBVEtu5T7pC5BAF8
	yUrUN0nQ==;
Received: from [192.76.154.238] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vi8w6-003MaT-5E; Tue, 20 Jan 2026 11:26:10 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Alexey Charkov <alchark@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Quentin Schulz <quentin.schulz@cherry.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Explicitly request UFS reset pin on RK3576
Date: Tue, 20 Jan 2026 11:26:09 +0100
Message-ID: <4253761.Y6S9NjorxK@phil>
In-Reply-To: <8df14d73-8e20-4d89-89eb-d40f27814d2d@cherry.de>
References: <20260119-ufs-rst-v1-1-c8e96493948c@gmail.com> <5743823.mogB4TqSGs@phil>
 <8df14d73-8e20-4d89-89eb-d40f27814d2d@cherry.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_102618_060006_D287EF65 
X-CRM114-Status: GOOD (  32.54  )
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

QW0gRGllbnN0YWcsIDIwLiBKYW51YXIgMjAyNiwgMTE6MjE6MzQgTWl0dGVsZXVyb3DDpGlzY2hl
IE5vcm1hbHplaXQgc2NocmllYiBRdWVudGluIFNjaHVsejoKPiBIaSBIZWlrbywKPiAKPiBPbiAx
LzIwLzI2IDk6NTUgQU0sIEhlaWtvIFN0dWVibmVyIHdyb3RlOgo+ID4gQW0gRGllbnN0YWcsIDIw
LiBKYW51YXIgMjAyNiwgMDI6Mzk6MjggTWl0dGVsZXVyb3DDpGlzY2hlIE5vcm1hbHplaXQgc2No
cmllYiBTaGF3biBMaW46Cj4gPj4g5ZyoIDIwMjYvMDEvMTkg5pif5pyf5LiAIDE3OjIyLCBBbGV4
ZXkgQ2hhcmtvdiDlhpnpgZM6Cj4gPj4+IFJvY2tjaGlwIFJLMzU3NiBVRlMgY29udHJvbGxlciB1
c2VzIGEgZGVkaWNhdGVkIHBpbiB0byByZXNldCB0aGUgY29ubmVjdGVkCj4gPj4+IFVGUyBkZXZp
Y2UsIHdoaWNoIGNhbiBvcGVyYXRlIGVpdGhlciBpbiBhIGhhcmR3YXJlIGNvbnRyb2xsZWQgbW9k
ZSBvciBhcyBhCj4gPj4+IEdQSU8gcGluLgo+ID4+Pgo+ID4+Cj4gPj4gSXQncyB0aGUgb25seSBv
bmUgMS4yViBJTyBjb3VsZCBiZSB1c2VkIG9uIFJLMzU3NiB0byByZXNldCB1ZnMgZGV2aWNlcywK
PiA+PiBleGNlcHQgdWZzIHJlZmNsay4gU28gaXQncyBhIGRlZGljYXRlZCBwaW4gZm9yIHN1cmUg
aWYgdXNpbmcgdWZzLCB0aGF0J3MKPiA+PiB3aHkgd2UgcHV0IGl0IGludG8gcmszNTc2LmR0c2ku
Cj4gPj4KPiA+Pj4gUG93ZXItb24gZGVmYXVsdCBpcyBHUElPIG1vZGUsIGJ1dCB0aGUgYm9vdCBS
T00gcmVjb25maWd1cmVzIGl0IHRvIGEKPiA+Pj4gaGFyZHdhcmUgY29udHJvbGxlZCBtb2RlIGlm
IGl0IHVzZXMgVUZTIHRvIGxvYWQgdGhlIG5leHQgYm9vdCBzdGFnZS4KPiA+Pj4KPiA+Pgo+ID4+
IFJPTSBjb2RlIGNvdWxkIGJlIHNwZWNpZmljLCBidXQgdGhlIGxpbnV4L2xvYWRlciBkcml2ZXIg
aXMgY29tcGF0aWJsZe+8jAo+ID4+IHNvIGZvciB0aGUgY29taW5nIFNvQ3MsIHdpdGggbW9yZSAx
LjJWIElPIGNvdWxkIGJlIHVzZWQsIGl0J3MgbW9yZQo+ID4+IGZsZXhpYmxlIHRvIHVzZSBncGlv
LWJhc2VkIGluc3RlYWQgb2YgaGFyZHdhcmUgY29udHJvbGxlZChvZiBjb3Vyc2UsCj4gPj4gbW92
ZSByZXNldCBwaW5jdHJsIHNldHRpbmdzIGludG8gYm9hcmQgZHRzKS4KPiA+Pgo+ID4+PiBHaXZl
biB0aGF0IGV4aXN0aW5nIGJpbmRpbmdzIChhbmQgcmszNTc2LmR0c2kpIGV4cGVjdCBhIEdQSU8t
Y29udHJvbGxlZAo+ID4+PiBkZXZpY2UgcmVzZXQsIHJlcXVlc3QgdGhlIHJlcXVpcmVkIHBpbiBj
b25maWcgZXhwbGljaXRseS4KPiA+Pj4KPiA+Pj4gVGhpcyBkb2Vzbid0IGFwcGVhciB0byBhZmZl
Y3QgTGludXgsIGJ1dCBpdCBkb2VzIGFmZmVjdCBVLWJvb3Q6Cj4gPj4+Cj4gPj4KPiA+PiBJSVVD
LCBpdCdzIG1vcmUgb3IgbGVzcyBhIGZpeCBmb3IgbG9hZGVyLCBtb3JlIHByZWNpc2VseSBVLWJv
b3QgaGVyZT8KPiA+PiBJJ20gbm90IGVudGlyZWx5IGNlcnRhaW4gYWJvdXQgdGhlIGhhbmRsaW5n
IGhlcmUsIGlzIGl0IHN0YW5kYXJkCj4gPj4gY29udmVudGlvbiB0byBhZGQgYSBmaXhlcyB0YWcg
aW4gdGhpcyBjb250ZXh0Pwo+ID4gCj4gPiBZZXMsIGEgZml4ZXMgdGFnIGlzIHdhcnJhbnRlZCBo
ZXJlLCBpbiBMaW51eCBpdCAib25seSIgZml4ZXMgYSBwb3RlbnRpYWwKPiA+IGlzc3VlIGR1ZSB0
byB0aGUgbWlzbWF0Y2ggYmV0d2VlbiBwaW5jb25maWcgYW5kIGdwaW8gZHVyaW5nIHByb2JlLgo+
ID4gCj4gPiBuY2UgdGhpcyBwYXRjaCB0aGVuIGVudGVycyB0aGUga2VybmVsLCBpdCBjYW4gYmUg
Y2hlcnJ5LXBpY2tlZCB0bwo+ID4gdGhlIGN1cnJlbnQgdS1ib290IGRldmVsb3BtZW50IGN5Y2xl
LiBJIGRvbid0IHRoaW5rIHUtYm9vdCBpcyBkb2luZwo+ID4gc3RhYmxlIHJlbGVhc2VzIHRob3Vn
aCwgc28gVS1Cb290IHdpbGwgb25seSBwcm9maXQgZm9yIHRoZSBuZXh0Cj4gPiB2ZXJzaW9uIHdo
ZXJlIHRoaXMgaXMgaW5jbHVkZWQuCj4gPiAKPiAKPiBVLUJvb3Qgb25seSB0YWtlcyB3aGF0J3Mg
aW4gZGV2aWNldHJlZS1yZWJhc2luZyAKPiAoaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2Nt
L2xpbnV4L2tlcm5lbC9naXQvZGV2aWNldHJlZS9kZXZpY2V0cmVlLXJlYmFzaW5nLmdpdCksIAo+
IHNvIG9ubHkgZnJvbSBMaW51cydzIHRyZWUgQUZBSUNULiBDLmYuIAo+IGh0dHBzOi8vZG9jcy51
LWJvb3Qub3JnL2VuL2xhdGVzdC9kZXZlbG9wL3Byb2Nlc3MuaHRtbCNyZXN5bmNpbmctb2YtdGhl
LWRldmljZS10cmVlLXN1YnRyZWUgCj4gYW5kIAo+IGh0dHBzOi8vZG9jcy51LWJvb3Qub3JnL2Vu
L2xhdGVzdC9kZXZlbG9wL2RldmljZXRyZWUvY29udHJvbC5odG1sI3Jlc3luY2luZy13aXRoLWRl
dmljZXRyZWUtcmViYXNpbmcuIAo+IFNlZSBhbHNvIE9GX1VQU1RSRUFNIEtjb25maWcgc3ltYm9s
IGluIFUtQm9vdC4KPiAKPiBUaGlzIHBvbGljeSBkb2VzIG1ha2UgYWRkaW5nIHN1cHBvcnQgZm9y
IGEgbmV3IGJvYXJkIHF1aXRlIHNsb3cgYXMgd2UgCj4gbWF5IG5lZWQgdG8gd2FpdCBtb250aHMg
YmVmb3JlIGl0IG1ha2VzIGl0IHRvIExpbnVzJ3MgdHJlZSwgYW5kIHRoZW4gZ28gCj4gdGhyb3Vn
aCB0aGUgZGV2ZWxvcG1lbnQgY3ljbGUgaW4gVS1Cb290IHdoaWNoIGNhbiBhbHNvIHRha2UgYSBm
ZXcgbW9udGhzIAo+IGlmIHRoZSB0aW1pbmcgaXMgdW5mb3J0dW5hdGUuIEZvciBub3cgaXQgc2Vl
bXMgbGlrZSB3ZSdyZSBzdGlja2luZyB3aXRoIAo+IHRoaXMgcG9saWN5IHRvIGF2b2lkIHRvbyBt
dWNoIGluICJkb3duc3RyZWFtIiBEVCBpbiBVLUJvb3QuIEkga25vdyB3ZSAKPiBwdXNoIGZvciB0
aGlzIGFnZ3Jlc3NpdmVseSBmb3IgbmV3IFJvY2tjaGlwIGJvYXJkcyBhbmQgU29DcywgY2Fubm90
IHNheSAKPiBmb3Igb3RoZXIgdmVuZG9ycy4KClllYWgsIHRoaXMgaXMgd2hhdCBJICJtZWFudCIs
IGJ1dCBleHBsYWluZWQgYmFkbHkgOi0pCgpBbHNvIHRoaXMgaXMgdGhlIHJlYXNvbiBJJ2QgbGlr
ZSB0aGF0IHYyIHNvb24naXNoLCB0aGF0IGl0IGNhbiBtYWtlIGl0cwp3YXkgc3RpbGwgaW50byA2
LjIwLXJjMSBhbmQgdGh1cyBpbnRvIHUtYm9vdC4KCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
