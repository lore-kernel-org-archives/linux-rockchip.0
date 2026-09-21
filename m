Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1C1CC982DE
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Sep 2026 06:35:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ltaSswFXWRoDmZ4uKLp8qCLZysqKBjsUXrhCsav1RxY=; b=dBk4Np7GGLqK9y
	gYOJMnjmp9iFmc9mw7RCNicdmibbIEA9pPb7jkb/SGl7ZSdNX9IXtJghBnTb0qPezI/tyWspe3YLD
	pkLi89lgHFjqEYuTJ9Au+FKSzvJYt88Hd13AqU0eGgYkrwty+KOrMaFeEkE4S4BSAaYoeF7gWpXKC
	dnaMmbYzcGKlNJ0WXF0STpnNVgHiqhG5k4JVUOl4nquzmmodWWj5qQZO+CBZdIJ5CJbcDfQr2EL1A
	FhSXEwhl8a6hrnuJbajb20l+m7CqvyBu5RHu+y09F/rJbsXbtzvYajtd8W0DAcVbf6q5NMMDpX+9m
	+KMnP5chstkMtWDXK6Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8XcO-000000012Av-0q3F;
	Mon, 21 Sep 2026 06:35:12 +0000
Received: from mail-m822136122.xmail.ntesmail.com ([8.221.36.122])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8XcK-0000000124a-0P96;
	Mon, 21 Sep 2026 06:35:11 +0000
Received: from [172.16.12.74] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4e87d7a93;
	Mon, 21 Sep 2026 14:34:59 +0800 (GMT+08:00)
Message-ID: <96882735-091f-49c6-a47b-5da8be711818@rock-chips.com>
Date: Mon, 21 Sep 2026 14:34:57 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 19/19] drm/bridge: analogix_dp: don't create a
 panel_bridge
From: Damon Ding <damon.ding@rock-chips.com>
To: Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jessica Zhang <jesszhan0024@gmail.com>,
 Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>,
 Lucas Stach <l.stach@pengutronix.de>, Frank Li <Frank.Li@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Paul Cercueil <paul@crapouillou.net>,
 Paul Kocialkowski <paulk@sys-base.io>, Linus Walleij <linusw@kernel.org>,
 Inki Dae <inki.dae@samsung.com>, Jagan Teki <jagan@amarulasolutions.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>, Sean Paul <sean@poorly.run>,
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>
Cc: Albert Esteve <aesteve@redhat.com>, Anusha Srivatsa
 <asrivats@redhat.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Hui Pu <Hui.Pu@gehealthcare.com>, Ian Ray <ian.ray@gehealthcare.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-mips@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, asahi@lists.linux.dev,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>
References: <20260916-drm-bridge-every-panel-v3-0-83afb4f1a707@bootlin.com>
 <20260916-drm-bridge-every-panel-v3-19-83afb4f1a707@bootlin.com>
 <975a4d45-9a61-4858-b498-8bc0a1e44746@rock-chips.com>
Content-Language: en-US
In-Reply-To: <975a4d45-9a61-4858-b498-8bc0a1e44746@rock-chips.com>
X-HM-Tid: 0aa0c2acc9e403a8kunm657b9e77980220
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkZQx9KVh9PGB9MT0kfGB1ITFYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQkxVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=ZHOwku2DSYkcme2HF6miD3tsHrohcDCgQN32pWRYnUFFJhMdcqTLpQQOBt1nASCVshzWCK1Rf2jUBn74aj5YAYiAlPuBMp3c1pQ2RZPJiSymLL/avNTAW5fYkrdsl8AUfIfftyZEjxzoezMDLxmwH2o4F6DAq4wXT1lyFhMzJFI=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=TrLtgz6x2U7PEO6IDlWwEQdJyY8ByiWJ0svyu3eBk3I=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260920_233509_498116_65678358 
X-CRM114-Status: GOOD (  19.93  )
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

T24gOS8yMS8yMDI2IDExOjA3IEFNLCBEYW1vbiBEaW5nIHdyb3RlOgo+IEhpIEx1Y2EsCj4gCj4g
T24gOS8xNi8yMDI2IDk6NDUgUE0sIEx1Y2EgQ2VyZXNvbGkgd3JvdGU6Cj4+IE5vdyBhIHBhbmVs
X2JyaWRnZSBpcyBhdXRvbWF0aWNhbGx5IGNyZWF0ZWQgZm9yIGV2ZXJ5IGRybV9wYW5lbCBhbmQg
dGhlCj4+IHBhbmVsLWJyaWRnZSBBUEkgaXMganVzdCBhIGRlcHJlY2F0ZWQgd3JhcHBlciB0byBh
Y2Nlc3MgaXQuCj4+Cj4+IFVwZGF0ZSBhbmQgc2ltcGxpZnkgdGhlIGNvZGUgYnkganVzdCBnZXR0
aW5nIGEgcmVmZXJlbmNlIHRvIHRoZQo+PiBhbHJlYWR5LWV4aXN0aW5nIGJyaWRnZSB1c2luZyBv
Zl9kcm1fZ2V0X2JyaWRnZV9ieV9lbmRwb2ludCgpLgo+Pgo+PiBBcyBvZl9kcm1fZ2V0X2JyaWRn
ZV9ieV9lbmRwb2ludCgpIHJldHVybnMgYSByZWZjb3VudGVkIGJyaWRnZSwgdGFrZSBjYXJlCj4+
IG9mIHB1dHRpbmcgdGhlIGJyaWRnZSByZWZlcmVuY2UuIFRoaXMgaXMgbm90IGVhc2lseSBkb25l
IGluIHRoZSByZW1vdmUgCj4+IHBhdGgKPj4gZHVlIHRvIHRoZSBkaWZmZXJlbnQgcHJvYmUgcGF0
aHMgb2YgdGhlIHVzZXIgZHJpdmVycywgc28gYWRkIGEgZGV2bSAKPj4gYWN0aW9uCj4+IHRvIGVu
c3VyZSB0aGUgcmVmZXJlbmNlIGlzIHB1dCBvbmx5IHdoZW4gaXQgd2FzIHRha2VuLgo+Pgo+PiBB
c3Npc3RlZC1ieTogb3BlbmNvZGU6ZGVlcHNlZWstdjQtZmxhc2gtMDczMQo+PiBTaWduZWQtb2Zm
LWJ5OiBMdWNhIENlcmVzb2xpIDxsdWNhLmNlcmVzb2xpQGJvb3RsaW4uY29tPgo+PiAtLS0KPj4g
wqAgZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9LY29uZmlnwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCB8wqAgMSAtCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgvYW5h
bG9naXhfZHBfY29yZS5jIHwgNDAgKysrKysrKysrKysrIAo+PiArLS0tLS0tLS0tCj4+IMKgIGRy
aXZlcnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX2RwLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCB8IDM2ICsgCj4+ICstLS0tLS0tLS0tLS0tLS0tLQo+PiDCoCBkcml2ZXJzL2dwdS9k
cm0vcm9ja2NoaXAvYW5hbG9naXhfZHAtcm9ja2NoaXAuY8KgwqDCoCB8wqAgOSAtLS0tLQo+PiDC
oCBpbmNsdWRlL2RybS9icmlkZ2UvYW5hbG9naXhfZHAuaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCB8wqAgMSAtCj4+IMKgIDUgZmlsZXMgY2hhbmdlZCwgMjUgaW5zZXJ0aW9u
cygrKSwgNjIgZGVsZXRpb25zKC0pCj4+Cgpbc25pcF0KCj4+IEBAIC00ODgsMTQgKzQ4Nyw2IEBA
IHN0YXRpYyB2b2lkIHJvY2tjaGlwX2RwX3JlbW92ZShzdHJ1Y3QgCj4+IHBsYXRmb3JtX2Rldmlj
ZSAqcGRldikKPj4gwqAgewo+PiDCoMKgwqDCoMKgIHN0cnVjdCByb2NrY2hpcF9kcF9kZXZpY2Ug
KmRwID0gcGxhdGZvcm1fZ2V0X2RydmRhdGEocGRldik7CgpUaGUgYWJvdmUgdW51c2VkICZyb2Nr
Y2hpcF9kcF9kZXZpY2UgY291bGQgYmUgYWxzbyByZW12ZWQuCgo+PiAtwqDCoMKgIC8qCj4+IC3C
oMKgwqDCoCAqIFJlbGVhc2UgdGhlIHByb2JlLXRpbWUgcmVmZXJlbmNlIGZyb20gb2ZfZHJtX2Zp
bmRfcGFuZWwoKS4gSWYgCj4+IGJpbmQKPj4gLcKgwqDCoMKgICogcmFuLCB0aGUgcGFuZWxfYnJp
ZGdlIGhvbGRzIGEgc2Vjb25kIHJlZmVyZW5jZSB0aGF0IGRldm0gY2xlYW51cAo+PiAtwqDCoMKg
wqAgKiB3aWxsIHJlbGVhc2Ugd2hlbiB0aGUgYnJpZGdlIGlzIGRlc3Ryb3llZCBhZnRlciByZW1v
dmUoKSByZXR1cm5zLgo+PiAtwqDCoMKgwqAgKi8KPj4gLcKgwqDCoCBpZiAoZHAtPnBsYXRfZGF0
YS5wYW5lbCkKPj4gLcKgwqDCoMKgwqDCoMKgIGRybV9wYW5lbF9wdXQoZHAtPnBsYXRfZGF0YS5w
YW5lbCk7Cj4+IC0KPj4gwqDCoMKgwqDCoCBjb21wb25lbnRfZGVsKCZwZGV2LT5kZXYsICZyb2Nr
Y2hpcF9kcF9jb21wb25lbnRfb3BzKTsKPj4gwqAgfQo+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9k
cm0vYnJpZGdlL2FuYWxvZ2l4X2RwLmggYi9pbmNsdWRlL2RybS9icmlkZ2UvIAo+PiBhbmFsb2dp
eF9kcC5oCj4+IGluZGV4IDBlMGI4N2FiZWU1OS4uNjAzMzEzN2I2NTFlIDEwMDY0NAo+PiAtLS0g
YS9pbmNsdWRlL2RybS9icmlkZ2UvYW5hbG9naXhfZHAuaAo+PiArKysgYi9pbmNsdWRlL2RybS9i
cmlkZ2UvYW5hbG9naXhfZHAuaAo+PiBAQCAtMzUsNyArMzUsNiBAQCBzdGF0aWMgaW5saW5lIGJv
b2wgYW5hbG9naXhfZHBfaXNfcm9ja2NoaXAoZW51bSAKPj4gYW5hbG9naXhfZHBfZGV2dHlwZSB0
eXBlKQo+PiDCoCBzdHJ1Y3QgYW5hbG9naXhfZHBfcGxhdF9kYXRhIHsKPj4gwqDCoMKgwqDCoCBl
bnVtIGFuYWxvZ2l4X2RwX2RldnR5cGUgZGV2X3R5cGU7Cj4+IC3CoMKgwqAgc3RydWN0IGRybV9w
YW5lbCAqcGFuZWw7Cj4+IMKgwqDCoMKgwqAgc3RydWN0IGRybV9icmlkZ2UgKm5leHRfYnJpZGdl
Owo+PiDCoMKgwqDCoMKgIHN0cnVjdCBkcm1fZW5jb2RlciAqZW5jb2RlcjsKPj4gwqDCoMKgwqDC
oCBzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yOwo+Pgo+IAo+IEkgYXBwbHkgdGhpcyBw
YXRjaCBzZXJpZXMgd2l0aCB0aGUgcmVsYXRlZCBvbmVbMF0sIGFuZCB0aGUgZURQIHdvcmsgd2Vs
bCAKPiBvbiBteSBSSzM1NzYgYm9hcmQuCj4gCj4gVGVzdGVkLWJ5OiBEYW1vbiBEaW5nIDxkYW1v
bi5kaW5nQHJvY2stY2hpcHMuY29tPgo+IAo+IEluIG15IHBhdGNoIHNlcmllcyBmb3IgQW5hbG9n
aXggRFAgSFBEIHN1cHBvcnQsIEhlaWtvIGFsc28gcG9pbnRlZCBvdXQgCj4gdGhhdCBkZXZtX2Ry
bV9vZl9nZXRfYnJpZGdlKCkoZGVwcmVjYXRlZCBub3cpIGNhbiBiZSB1c2VkIHRvIGdldCB0aGUg
Cj4gcGFuZWwgYnJpZGdlIGRpcmVjdGx5LCBhbmQgdGhlIHJlZHVuZGFudCAmYW5hbG9naXhfZHBf
cGxhdF9kYXRhLnBhbmVsIAo+IGNhbiBiZSByZW1vdmVkWzFdLiBTaW5jZSB5b3VyIHBhdGNoIHNl
cmllcyBhbHJlYWR5IGNvbnRhaW5zIHRoZXNlIAo+IG9wdGltaXphdGlvbnMsIEkgd2lsbCByZWJh
c2UgbXkgcGF0Y2ggc2VyaWVzIG9uIHRvcCBvZiB5b3VycyBmb3IgCj4gc3Vic2VxdWVudCB1cGRh
dGVzLgo+IAo+IFJldmlld2VkLWJ5OiBEYW1vbiBEaW5nIDxkYW1vbi5kaW5nQHJvY2stY2hpcHMu
Y29tPgo+IAo+IFswXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNjA5MTUtZHJtLWJy
aWRnZS1kcm1fcGFuZWwtY2xlYW51cC0gCj4gdjQtMC0zMDQwMWQ5NDA2ZjNAYm9vdGxpbi5jb20v
Cj4gWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC81NjA5ODI1LmlaQVNLRDJLUFZAZGll
Z28vCj4gCgpCZXN0IHJlZ2FyZHMsCkRhbW9uCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
