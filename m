Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC5CDC87FCC
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Jul 2025 01:47:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r1g8nqKE02SAkOIqkvpf6nOaBXTOVN5r14IqKzZuZhs=; b=Njroul5pU3FX26
	mIxgoqwFASXRuItX1Je2ompZ3clYJgPVdH3T8opDWTwapQKqj6H6KMssqnhR7SW+78x/UZb37j324
	7Nhu5No77sFMYPvArEMRQMHuBye5h7OYOeWc83lH2EONijo9GeQF2K2CwEOPoIjMMQ+fH7wSWNdj1
	/jEYS40wGNQQI0Bv3q4oPVcKbRBJR4Jm6gR3v2EvDGjEWRBQGcG9YJFbAVCKiw5mMUX4eEkrtkQDK
	mrS42OBfqemYvhnpT/DdOKx+chvWIlyafCNWJX4g27QxV7tGoyNzCZy9H3TJgZ9KnqSBqBVccEIPJ
	NnaDKlxkmtuIZXFpV4Dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uf7Ws-00000008qLu-22PV;
	Fri, 25 Jul 2025 01:47:22 +0000
Received: from mail-m49213.qiye.163.com ([45.254.49.213])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uf7Wp-00000008qLB-1dvo;
	Fri, 25 Jul 2025 01:47:21 +0000
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1d2fe2f3d;
	Fri, 25 Jul 2025 09:47:11 +0800 (GMT+08:00)
Message-ID: <0c923b86-e050-4152-abdb-81c05d40c013@rock-chips.com>
Date: Fri, 25 Jul 2025 09:47:11 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 08/14] drm/bridge: analogix_dp: Apply
 drm_bridge_connector helper
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org
Cc: Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
 jingoohan1@gmail.com, inki.dae@samsung.com, sw0312.kim@samsung.com,
 kyungmin.park@samsung.com, krzk@kernel.org, alim.akhtar@samsung.com,
 hjc@rock-chips.com, andy.yan@rock-chips.com,
 dmitry.baryshkov@oss.qualcomm.com, l.stach@pengutronix.de,
 dianders@chromium.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20250724080304.3572457-1-damon.ding@rock-chips.com>
 <20250724080304.3572457-9-damon.ding@rock-chips.com>
 <10694296.nUPlyArG6x@diego>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <10694296.nUPlyArG6x@diego>
X-HM-Tid: 0a983f434c8003a3kunm70577913ca0a1
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUxJT1ZPT04YHkkfT0hCHUJWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=JhBX+8167OtvqHOcu3utBjwzc4uAfcAN6HBMT77ismrywSVOMfk/yJYxo/6Q41/e0eZSW7SmdIYOVGZWDlTIO1gIBtLe91LlUIVo3A8nwIlzt4GezJEw/7GAtyL58OhQ+ics3bwVS1iUyf0R1VpNrWU5SpZUv6p4Z4y6yiMaqnY=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=uEJXYdE6sHQ3QcQ35RAz+8iw/E6lQ+J+vzPB9e0z0ZE=;
	h=date:mime-version:subject:message-id:from;
X-HMAIL-Slblob-Mailprops: v1_kTakW7JjryuX/AmUDtQemwAhscXZcteF2ErvzJrxulFvolGm/tSnVEyS7nT3Vzl94marjEgixW46uQ5JSpxfEuzxPDKrdZhW5Js57PMhhC1PYFEjJNu51pFYd81rZtUR7I0Un733I3A8eSvV+zRnvQbhR0kH516cZQQMWibkOizeB8o0Hs4plvX9IFj4QCCx4BW3sniFYva40eZkLpngDOxYX9E0WB8rsm/jwA5aE1M0Y26pq+HCH1VVN2qLlwzR633Xgjq61kKcf767w9sDjA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_184719_928128_3E786DA1 
X-CRM114-Status: GOOD (  11.24  )
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

SGkgSGVpa28sCgpPbiAyMDI1LzcvMjQgMjE6MDAsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+IEhp
IERhbW9uLAo+IAo+IEFtIERvbm5lcnN0YWcsIDI0LiBKdWxpIDIwMjUsIDEwOjAyOjU4IE1pdHRl
bGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgRGFtb24gRGluZzoKPj4gQXBwbHkgZHJt
X2JyaWRnZV9jb25uZWN0b3IgaGVscGVyIGZvciBBbmFsb2dpeCBEUCBkcml2ZXIuCj4+Cj4+IFRo
ZSBmb2xsb3dpbmcgY2hhbmdlcyBoYXZlIGJlZW4gbWFkZToKPj4gLSBBcHBseSBkcm1fYnJpZGdl
X2Nvbm5lY3RvciBoZWxwZXIgdG8gZ2V0IHJpZCBvZiAmZHJtX2Nvbm5lY3Rvcl9mdW5jcwo+PiAg
ICBhbmQgJmRybV9jb25uZWN0b3JfaGVscGVyX2Z1bmNzLgo+PiAtIFJlbW92ZSB1bm5lY2Vzc2Fy
eSBwYXJhbWV0ZXIgc3RydWN0IGRybV9jb25uZWN0b3IqIGZvciBjYWxsYmFjawo+PiAgICAmYW5h
bG9naXhfZHBfcGxhdF9kYXRhLmF0dGFjaC4KPj4gLSBSZW1vdmUgJmFuYWxvZ2l4X2RwX2Rldmlj
ZS5jb25uZWN0b3IuCj4+IC0gQ29udmVydCBhbmFsb2dpeF9kcF9hdG9taWNfY2hlY2soKS9hbmFs
b2dpeF9kcF9kZXRlY3QoKSB0bwo+PiAgICAmZHJtX2JyaWRnZV9mdW5jcy5hdG9taWNfY2hlY2so
KS8mZHJtX2JyaWRnZV9mdW5jcy5kZXRlY3QoKS4KPj4gLSBTcGxpdCBhbmFsb2dpeF9kcF9nZXRf
bW9kZXMoKSBpbnRvICZkcm1fYnJpZGdlX2Z1bmNzLmdldF9tb2RlcygpIGFuZAo+PiAgICAmZHJt
X2JyaWRnZV9mdW5jcy5lZGlkX3JlYWQoKS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogRGFtb24gRGlu
ZyA8ZGFtb24uZGluZ0Byb2NrLWNoaXBzLmNvbT4KPiAKPj4gICBzdGF0aWMgZW51bSBkcm1fY29u
bmVjdG9yX3N0YXR1cwo+PiAtYW5hbG9naXhfZHBfZGV0ZWN0KHN0cnVjdCBkcm1fY29ubmVjdG9y
ICpjb25uZWN0b3IsIGJvb2wgZm9yY2UpCj4+ICthbmFsb2dpeF9kcF9icmlkZ2VfZGV0ZWN0KHN0
cnVjdCBkcm1fYnJpZGdlICpicmlkZ2UpCj4+ICAgewo+PiAtCXN0cnVjdCBhbmFsb2dpeF9kcF9k
ZXZpY2UgKmRwID0gdG9fZHAoY29ubmVjdG9yKTsKPj4gKwlzdHJ1Y3QgYW5hbG9naXhfZHBfZGV2
aWNlICpkcCA9IHRvX2RwKGJyaWRnZSk7Cj4+ICAgCWVudW0gZHJtX2Nvbm5lY3Rvcl9zdGF0dXMg
c3RhdHVzID0gY29ubmVjdG9yX3N0YXR1c19kaXNjb25uZWN0ZWQ7Cj4+ICAgCj4+ICAgCWlmIChk
cC0+cGxhdF9kYXRhLT5wYW5lbCkKPiAKPiB0aGlzIG5lZWRzIGFuIHVwZGF0ZSB0bwo+IAo+ICAg
c3RhdGljIGVudW0gZHJtX2Nvbm5lY3Rvcl9zdGF0dXMKPiAtYW5hbG9naXhfZHBfYnJpZGdlX2Rl
dGVjdChzdHJ1Y3QgZHJtX2JyaWRnZSAqYnJpZGdlKQo+ICthbmFsb2dpeF9kcF9icmlkZ2VfZGV0
ZWN0KHN0cnVjdCBkcm1fYnJpZGdlICpicmlkZ2UsIHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25u
ZWN0b3IpCj4gCj4gdG8gZm9sbG93IEFuZHkncyBwYXRjaCBbMF0gdGhhdCBnb3QgYWxyZWFkeSBh
cHBsaWVkIHRvIGRybS1taXNjLW5leHQKPiAKPiBIZWlrbwo+IAo+IAo+IFswXSBodHRwczovL2dp
dGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL21pc2Mva2VybmVsLy0vY29tbWl0LzVkMTU2YTljM2Q1
ZWEzZGJlYzE5MjEyMTI1OWRlZTJjMmY5MzhmYTEKPiAKPiAKPiAKCkkgd2lsbCB1cGRhdGUgaXQg
aW4gdGhlIG5leHQgdmVyc2lvbi4KCkJlc3QgcmVnYXJkcywKRGFtb24KCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
