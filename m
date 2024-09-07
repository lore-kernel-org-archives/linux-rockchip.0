Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABCCACD4846
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Sep 2024 05:35:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h4C5y4NX9ikf21BNzZvuETO1vPg+DQWSzTbnEInRkCk=; b=LlI9JXYm+WNen7
	ojV//H13GIIvnare1clHzZDsrdDjVvaACxOzGUbKGAYvpXsLHnDwn1Pjl0kD52xiDw17xTw4naVXe
	AzeOF/2qN7UdF95M7WKlj8wD+B20Vy4T0D998OdQquC0XfIl7GxehV4X0mu+Ohg7UxjLJXdm6x0ZT
	QGa4gmQKcL4a4+YF1Zdoe0TERFhlRPibXl3j2J7edI3I0ntgHLuT5Shpph7IqLn++3EJ/G8UHk5bM
	0SGKSeHRc0U2Y3zvRDSd3AzBaPP8YzQ4D4CQD22qpzOwLwzOO0TsD/V1ZS/WO2/oCENyTkFo9a4kZ
	d3B9orMNTa6IUc99Qjkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smo63-0000000EPmi-2s5V;
	Sat, 07 Sep 2024 05:34:55 +0000
Received: from msa-215.smtpout.orange.fr ([193.252.23.215] helo=msa.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smo60-0000000EPld-3q5q;
	Sat, 07 Sep 2024 05:34:54 +0000
Received: from [192.168.1.37] ([90.11.132.44])
	by smtp.orange.fr with ESMTPA
	id mo5jsZENhQYYumo5jsI8EG; Sat, 07 Sep 2024 07:34:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1725687289;
	bh=zhb/fr3/ahbe9u0OOQ3I4zVqjQ6OdAdflP4aJvLzC4g=;
	h=Message-ID:Date:MIME-Version:Subject:To:From;
	b=Ov4MO2/EsHbrXOn9mC5X45wUoZIu5LI6TUyK0ggF1aC8TviLvfB2vCpHsKNXLYgO5
	 vBaAVBW+bZ0l5ZTWIpIqG1k5s5ogB6GbmyJep53eZUBPf7UrWql6sNXCVJAV7qwJ/1
	 IKAMTL4XPED5b32aaNhI45/3uOfPJ3CGw0qz15LWBCyr9YqZ3KUAXf9faq3OFP5C8r
	 RcDhXSGvkEV2+CZzDd2oTGxqPwspFww7txYJdfKzDwGcoeUud15+vIoJ0S0x/fCqRZ
	 1y+Kq0GAzZTDRh8RQOXn6s6TFr9lLo8cXOffoCQL4+J2ZW41amN0iv7I2iv+YmsbqH
	 V9/TpYOhfBxiA==
X-ME-Helo: [192.168.1.37]
X-ME-Auth: bWFyaW9uLmphaWxsZXRAd2FuYWRvby5mcg==
X-ME-Date: Sat, 07 Sep 2024 07:34:49 +0200
X-ME-IP: 90.11.132.44
Message-ID: <daf856a8-32ad-47ac-91b2-0aa2253636f8@wanadoo.fr>
Date: Sat, 7 Sep 2024 07:34:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v2 02/10] net: ethernet: Convert using
 devm_clk_get_enabled() in emac_probe()
To: Li Zetao <lizetao1@huawei.com>, mchehab@kernel.org,
 florian.fainelli@broadcom.com, andrew@lunn.ch, olteanv@gmail.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, wens@csie.org, jernej.skrabec@gmail.com,
 samuel@sholland.org, heiko@sntech.de, yisen.zhuang@huawei.com,
 salil.mehta@huawei.com, hauke@hauke-m.de, alexandre.torgue@foss.st.com,
 joabreu@synopsys.com, mcoquelin.stm32@gmail.com, wellslutw@gmail.com,
 radhey.shyam.pandey@amd.com, michal.simek@amd.com, hdegoede@redhat.com,
 ilpo.jarvinen@linux.intel.com, ruanjinjie@huawei.com,
 hverkuil-cisco@xs4all.nl, u.kleine-koenig@pengutronix.de,
 jacky_chou@aspeedtech.com, jacob.e.keller@intel.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, platform-driver-x86@vger.kernel.org
References: <20240907031926.3591353-1-lizetao1@huawei.com>
 <20240907031926.3591353-3-lizetao1@huawei.com>
Content-Language: en-US, fr-FR
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
In-Reply-To: <20240907031926.3591353-3-lizetao1@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_223453_248931_76D573FE 
X-CRM114-Status: GOOD (  16.43  )
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

TGUgMDcvMDkvMjAyNCDDoCAwNToxOSwgTGkgWmV0YW8gYSDDqWNyaXTCoDoKPiBVc2UgZGV2bV9j
bGtfZ2V0X2VuYWJsZWQoKSBpbnN0ZWFkIG9mIGRldm1fY2xrX2dldCgpICsKPiBjbGtfcHJlcGFy
ZV9lbmFibGUoKSwgd2hpY2ggY2FuIG1ha2UgdGhlIGNsayBjb25zaXN0ZW50IHdpdGggdGhlIGRl
dmljZQo+IGxpZmUgY3ljbGUgYW5kIHJlZHVjZSB0aGUgcmlzayBvZiB1bnJlbGVhc2VkIGNsayBy
ZXNvdXJjZXMuIFNpbmNlIHRoZQo+IGRldmljZSBmcmFtZXdvcmsgaGFzIGF1dG9tYXRpY2FsbHkg
cmVsZWFzZWQgdGhlIGNsayByZXNvdXJjZSwgdGhlcmUgaXMKPiBubyBuZWVkIHRvIGV4ZWN1dGUg
Y2xrX2Rpc2FibGVfdW5wcmVwYXJlKGNsaykgb24gdGhlIGVycm9yIHBhdGgsIGRyb3AKPiB0aGUg
b3V0X2Nsa19kaXNhYmxlX3VucHJlcGFyZSBsYWJlbCwgYW5kIHRoZSBvcmlnaW5hbCBlcnJvciBw
cm9jZXNzIGNhbgo+IGNoYW5nZWQgdG8gdGhlIG91dF9kaXNwb3NlX21hcHBpbmcgZXJyb3IgcGF0
aC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBMaSBaZXRhbyA8bGl6ZXRhbzFAaHVhd2VpLmNvbT4KCkhp
LAoKSSB0aGluayB0aGF0IHRoZSBzdWJqZWN0IHNob3VsZCBiZSAibmV0OiBldGhlcm5ldDogYWxs
d2lubmVyOiIsIG9yIG1heWJlIApldmVuICJuZXQ6IGFsbHdpbm5lcjoiCgoKY2xrIGNhbiBub3cg
YmUgcmVtb3ZlZCBmcm9tIHN0cnVjdCBlbWFjX2JvYXJkX2luZm8gSSB0aGluay4KWW91IHNob3Vs
ZCBjaGVjayBmb3IgYWxsIHBhdGNoZXMsIGFzIGFza2VkIGluIFsxXS4KCkkndmUgbm90IGxvb2tl
ZCBhbGwgcGF0Y2hlcywgYnV0IGxhbnRpcV94cngyMDAoKSBsb29rcyBhbHNvIGEgZ29vZCAKY2Fu
ZGlkYXRlIGZvciByZW1vdmluZyBjbGsgZnJvbSBhIHN0cnVjdHVyZS4KCkNKCgpbMV06IGh0dHBz
Oi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI0MDkwMzE1MTY0OS4xYjQ2NjE0NUBrZXJuZWwub3Jn
LwoKQ0oKCj4gLS0tCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9hbGx3aW5uZXIvc3VuNGktZW1h
Yy5jIHwgMTMgKystLS0tLS0tLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygr
KSwgMTEgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2FsbHdpbm5lci9zdW40aS1lbWFjLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9hbGx3aW5uZXIv
c3VuNGktZW1hYy5jCj4gaW5kZXggZDc2MWMwOGZlNWMxLi44ZjQyNTAxNzI5YjcgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvYWxsd2lubmVyL3N1bjRpLWVtYWMuYwo+ICsrKyBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2FsbHdpbm5lci9zdW40aS1lbWFjLmMKPiBAQCAtMTAwNSwy
MiArMTAwNSwxNiBAQCBzdGF0aWMgaW50IGVtYWNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rldmlj
ZSAqcGRldikKPiAgIAlpZiAoZW1hY19jb25maWd1cmVfZG1hKGRiKSkKPiAgIAkJbmV0ZGV2X2lu
Zm8obmRldiwgImNvbmZpZ3VyZSBkbWEgZmFpbGVkLiBkaXNhYmxlIGRtYS5cbiIpOwo+ICAgCj4g
LQlkYi0+Y2xrID0gZGV2bV9jbGtfZ2V0KCZwZGV2LT5kZXYsIE5VTEwpOwo+ICsJZGItPmNsayA9
IGRldm1fY2xrX2dldF9lbmFibGVkKCZwZGV2LT5kZXYsIE5VTEwpOwo+ICAgCWlmIChJU19FUlIo
ZGItPmNsaykpIHsKPiAgIAkJcmV0ID0gUFRSX0VSUihkYi0+Y2xrKTsKPiAgIAkJZ290byBvdXRf
ZGlzcG9zZV9tYXBwaW5nOwo+ICAgCX0KPiAgIAo+IC0JcmV0ID0gY2xrX3ByZXBhcmVfZW5hYmxl
KGRiLT5jbGspOwo+IC0JaWYgKHJldCkgewo+IC0JCWRldl9lcnIoJnBkZXYtPmRldiwgIkVycm9y
IGNvdWxkbid0IGVuYWJsZSBjbG9jayAoJWQpXG4iLCByZXQpOwo+IC0JCWdvdG8gb3V0X2Rpc3Bv
c2VfbWFwcGluZzsKPiAtCX0KPiAtCj4gICAJcmV0ID0gc3VueGlfc3JhbV9jbGFpbSgmcGRldi0+
ZGV2KTsKPiAgIAlpZiAocmV0KSB7Cj4gICAJCWRldl9lcnIoJnBkZXYtPmRldiwgIkVycm9yIGNv
dWxkbid0IG1hcCBTUkFNIHRvIGRldmljZVxuIik7Cj4gLQkJZ290byBvdXRfY2xrX2Rpc2FibGVf
dW5wcmVwYXJlOwo+ICsJCWdvdG8gb3V0X2Rpc3Bvc2VfbWFwcGluZzsKPiAgIAl9Cj4gICAKPiAg
IAlkYi0+cGh5X25vZGUgPSBvZl9wYXJzZV9waGFuZGxlKG5wLCAicGh5LWhhbmRsZSIsIDApOwo+
IEBAIC0xMDY4LDggKzEwNjIsNiBAQCBzdGF0aWMgaW50IGVtYWNfcHJvYmUoc3RydWN0IHBsYXRm
b3JtX2RldmljZSAqcGRldikKPiAgIAo+ICAgb3V0X3JlbGVhc2Vfc3JhbToKPiAgIAlzdW54aV9z
cmFtX3JlbGVhc2UoJnBkZXYtPmRldik7Cj4gLW91dF9jbGtfZGlzYWJsZV91bnByZXBhcmU6Cj4g
LQljbGtfZGlzYWJsZV91bnByZXBhcmUoZGItPmNsayk7Cj4gICBvdXRfZGlzcG9zZV9tYXBwaW5n
Ogo+ICAgCWlycV9kaXNwb3NlX21hcHBpbmcobmRldi0+aXJxKTsKPiAgIAlkbWFfcmVsZWFzZV9j
aGFubmVsKGRiLT5yeF9jaGFuKTsKPiBAQCAtMTA5NSw3ICsxMDg3LDYgQEAgc3RhdGljIHZvaWQg
ZW1hY19yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgIAo+ICAgCXVucmVn
aXN0ZXJfbmV0ZGV2KG5kZXYpOwo+ICAgCXN1bnhpX3NyYW1fcmVsZWFzZSgmcGRldi0+ZGV2KTsK
PiAtCWNsa19kaXNhYmxlX3VucHJlcGFyZShkYi0+Y2xrKTsKPiAgIAlpcnFfZGlzcG9zZV9tYXBw
aW5nKG5kZXYtPmlycSk7Cj4gICAJaW91bm1hcChkYi0+bWVtYmFzZSk7Cj4gICAJZnJlZV9uZXRk
ZXYobmRldik7CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
