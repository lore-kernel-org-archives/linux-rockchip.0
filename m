Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E818CD3427
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 May 2026 01:37:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7lYR8cxoT9H6Re7En0LzrsdirtwtFsB9adUvP2d/rgM=; b=JVqtXcXiNi2OmqOnlCOp8pypyy
	88TBlEXTTIl/LgRj5kxyCVVit32mAUvxMEnb1ajdYJPraWFwULb9ecejqFVYEV6PjEh+jM9TcfJM/
	4hl57a1rgVEHCPa2UU05HRSC1KRadWTFwSJTEZH1vgv8T0FB9IV9dDC6rhGkyX39KBYEufz1OrIjq
	4ohPG/uQcMAsDJQDwZCYNq9kJ487Z+EOc2LhklCw8Jq6fGa313+3aMB1voXOOoQNxPbD7OqMwpxT4
	5a7YvYlbDu16VTv7FqlhQoniI9ynbwpiivtDLJdo5/SyftZLgLdgmfG/j/jNFqDGNZUtJnONHmFv1
	NZikakyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLA9a-00000005IJM-2uK5;
	Fri, 08 May 2026 01:37:22 +0000
Received: from mail-m49232.qiye.163.com ([45.254.49.232])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLA9X-00000005IIY-3tRS;
	Fri, 08 May 2026 01:37:22 +0000
Received: from [172.16.12.43] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3d8e35828;
	Fri, 8 May 2026 09:37:09 +0800 (GMT+08:00)
Message-ID: <dd63b7f7-e891-49f1-a795-861d11c55e48@rock-chips.com>
Date: Fri, 8 May 2026 09:37:09 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 01/10] dt-bindings: display: rockchip: analogix-dp:
 Expand clock-names "hclk" for the third clock
To: Heiko Stuebner <heiko@sntech.de>, hjc@rock-chips.com,
 andy.yan@rock-chips.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org
References: <20260507112948.1115003-1-damon.ding@rock-chips.com>
 <20260507112948.1115003-2-damon.ding@rock-chips.com>
 <6496645.8F6SAcFxjW@phil> <4528155.7s5MMGUR32@phil>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <4528155.7s5MMGUR32@phil>
X-HM-Tid: 0a9e053b3f2703a3kunm1660029036bf9
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCGkkeVh5KS0sYTx9CTktMSlYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=AcZjUBiyGiz3rie6u5vJ2JopoUch7T3yj8wOtjUtZVppBrALf6lZ9KkR60NM7+TvXv3TdxiPfBRhjsoUTKsslGeSQWWSSudjzo89u+oReBsxSUu72iTVYk5kfduS5SbTrBfwMl0OLw7cvi/YTZtLHr2F2eKmEYQz9peqCUnRqRI=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=BUVBUOz5sUDHUQetR7revEkMQrBOhxD0zn0dGzL4myk=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_183720_489596_9D855742 
X-CRM114-Status: GOOD (  13.14  )
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
Cc: dmitry.baryshkov@oss.qualcomm.com, devicetree@vger.kernel.org, jonas@kwiboo.se, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, dianders@chromium.org, linux-rockchip@lists.infradead.org, Laurent.pinchart@ideasonboard.com, luca.ceresoli@bootlin.com, nicolas.frattaroli@collabora.com, linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgSGVpa28sCgpPbiA1LzcvMjAyNiA3OjQyIFBNLCBIZWlrbyBTdHVlYm5lciB3cm90ZToKPiBB
bSBEb25uZXJzdGFnLCA3LiBNYWkgMjAyNiwgMTM6NDA6MDkgTWl0dGVsZXVyb3DDpGlzY2hlIFNv
bW1lcnplaXQgc2NocmllYiBIZWlrbyBTdHVlYm5lcjoKPj4gSGkgRGFtb24sCj4+Cj4+IEFtIERv
bm5lcnN0YWcsIDcuIE1haSAyMDI2LCAxMzoyOTozOSBNaXR0ZWxldXJvcMOkaXNjaGUgU29tbWVy
emVpdCBzY2hyaWViIERhbW9uIERpbmc6Cj4+PiBUaGUgUkszNTg4IGVEUCBjb250cm9sbGVyIG5l
ZWRzIHRoZSB2aWRlbyBkYXRhcGF0aCBjbG9jayAiaGNsayIgdG8gd29yawo+Pj4gd2VsbC4gUHJl
dmlvdXNseSwgaXQgd29ya3Mgd2l0aG91dCBleHBsaWNpdGx5IGFkZGluZyB0aGlzIGNsb2NrIGJl
Y2F1c2UKPj4+IHRoZSAncm9ja2NoaXAsdm8tZ3JmID0gPCZ2bzFfZ3JmPicgcHJvcGVydHkgaW1w
bGljaXRseSBlbmFibGVzIEhDTEtfVk8xLgo+Pj4KPj4+IEZpeGVzOiBmODU1MTQ2MjYzYjEgKCJk
dC1iaW5kaW5nczogZGlzcGxheTogcm9ja2NoaXA6IGFuYWxvZ2l4LWRwOiBBZGQgc3VwcG9ydCBm
b3IgUkszNTg4IikKPj4+IFNpZ25lZC1vZmYtYnk6IERhbW9uIERpbmcgPGRhbW9uLmRpbmdAcm9j
ay1jaGlwcy5jb20+Cj4+PiAtLS0KPj4+ICAgLi4uL2JpbmRpbmdzL2Rpc3BsYXkvcm9ja2NoaXAv
cm9ja2NoaXAsYW5hbG9naXgtZHAueWFtbCAgICAgICB8IDQgKysrLQo+Pj4gICAxIGZpbGUgY2hh
bmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L3JvY2tjaGlwL3JvY2tj
aGlwLGFuYWxvZ2l4LWRwLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
ZGlzcGxheS9yb2NrY2hpcC9yb2NrY2hpcCxhbmFsb2dpeC1kcC55YW1sCj4+PiBpbmRleCBkOTli
MjNiODhjYzUuLmQyYmM4NjM2YjYyNiAxMDA2NDQKPj4+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L3JvY2tjaGlwL3JvY2tjaGlwLGFuYWxvZ2l4LWRwLnlh
bWwKPj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L3Jv
Y2tjaGlwL3JvY2tjaGlwLGFuYWxvZ2l4LWRwLnlhbWwKPj4+IEBAIC0yNiw3ICsyNiw5IEBAIHBy
b3BlcnRpZXM6Cj4+PiAgICAgICBpdGVtczoKPj4+ICAgICAgICAgLSBjb25zdDogZHAKPj4+ICAg
ICAgICAgLSBjb25zdDogcGNsawo+Pj4gLSAgICAgIC0gY29uc3Q6IGdyZgo+Pj4gKyAgICAgIC0g
ZW51bToKPj4+ICsgICAgICAgICAgLSBncmYKPj4+ICsgICAgICAgICAgLSBoY2xrCj4+Cj4+IGFy
ZSB5b3Ugc3VyZSBhYm91dCB0aGF0Pwo+Pgo+PiBUaGUgZWRwIHVzZXMgdGhlIHZvMS1ncmYgLSBz
byB3aGF0IGVuYWJsZXMgaXRzIGNsb2NrPwo+PiBGb3IgZXhhbXBsZSB0aGUgaGRtaSBjb250cm9s
bGVycyBvbiByazM1ODggYWxzbyB1c2UgdGhlIHZvMS1ncmYgYW5kCj4+IGV4cGxpY2l0bHkgaGFu
ZGxlIHRoYXQgY2xvY2suCj4+Cj4+IFNvIHdobyBkb2VzIGl0IGZvciB0aGUgZURQPwo+IAo+IEFo
LCAuLi4gZm91bmQgdGhlIGhjbGtfdm8xIGluIHRoZSBmb2xsb3dpbmcgcGF0Y2hlcy4KPiAKPiBT
dGlsbCB0aGUgYmluZGluZyBjb21taXQgbWVzc2FnZSBjb3VsZCB1c2Ugc29tZSBtb3JlIHdvcmRz
IGFib3V0IHdoYXQgdGhhdAo+IGNsb2NrIGlzLCBhbmQgd2h5IGl0IGNhbiAicmVwbGFjZSIgdGhl
IEdSRiBjbG9jayBmcm9tIGVhcmxpZXIgU29Dcy4KPiAKPiAKClllcywgSSB3aWxsIGFkZCBtb3Jl
IGRlc2NyaXB0aW9ucyBhYm91dCB0aGlzIGluIG5leHQgdmVyc2lvbi4gOi0pCgpCZXN0IHJlZ2Fy
ZHMsCkRhbW9uCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
