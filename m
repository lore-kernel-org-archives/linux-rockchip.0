Return-Path: <SRS0=C2RB=CM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	UNWANTED_LANGUAGE_BODY,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB8F7C433E2
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Sep 2020 10:03:28 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6DB7C2071B
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Sep 2020 10:03:28 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="dirL5rQ9"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6DB7C2071B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=C0eO1FUiF7bULXcNvip3Q0I0Dul3jSQVSl0dwyDPqog=; b=dirL5rQ92hmlbjuYgChi3BFvu
	F6uSRQ59a0Q4CscWtAOR8TvGTnIpv95ibyFE8RBdybjAY6F5+y/ytpsaeyG2iv9Upq5E3A0qiH3p4
	RojrgqIjlpFltsi7M6Qs7Xa7K3savBprwe0OTClncPww1609+MfDMEsG2LyD4Hl8+y2A5nj7OXBWP
	5RwFNajI6xHlLV0mlAOKLgz4tnBC6qKUo260dCfyjO+KvSQavRxLjKrRanhzm+u7w8BkcA3/kivyb
	NmijoJhqBwtJHp6VkQWwOP0snIpTfMX9bMO1MqXjLGb3py812T6GnfEhmhWgtmTtG59MwbwjYYVCO
	8LJGd6LYA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kDm5V-0001f5-Fv; Thu, 03 Sep 2020 10:03:25 +0000
Received: from regular1.263xmail.com ([211.150.70.203])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kDm5S-0001dI-C1
 for linux-rockchip@lists.infradead.org; Thu, 03 Sep 2020 10:03:23 +0000
Received: from localhost (unknown [192.168.167.70])
 by regular1.263xmail.com (Postfix) with ESMTP id B0BA9815;
 Thu,  3 Sep 2020 18:03:19 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.120] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P24386T139658960819968S1599127397973724_; 
 Thu, 03 Sep 2020 18:03:18 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <ed2ffba5f5a9bb96ee8f8d7b5adea992>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: huangtao@rock-chips.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v2 6/6] clk: rockchip: rk3399: Support module build
To: Elaine Zhang <zhangqing@rock-chips.com>, heiko@sntech.de
References: <20200903063147.10237-1-zhangqing@rock-chips.com>
 <20200903063234.10639-1-zhangqing@rock-chips.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <dbe40332-12d1-05b2-6ee9-083016003a2a@rock-chips.com>
Date: Thu, 3 Sep 2020 18:03:18 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200903063234.10639-1-zhangqing@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200903_060322_947576_7A6EBC2F 
X-CRM114-Status: GOOD (  19.66  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: huangtao@rock-chips.com, xf@rock-chips.com, sboyd@kernel.org,
 mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org,
 xxx@rock-chips.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Ck9uIDIwMjAvOS8zIOS4i+WNiDI6MzIsIEVsYWluZSBaaGFuZyB3cm90ZToKPiBzdXBwb3J0IENM
S19PRl9ERUNMQVJFIGFuZCBidWlsdGluX3BsYXRmb3JtX2RyaXZlcl9wcm9iZQo+IGRvdWJsZSBj
bGsgaW5pdCBtZXRob2QuCj4gYWRkIG1vZHVsZSBhdXRob3IsIGRlc2NyaXB0aW9uIGFuZCBsaWNl
bnNlIHRvIHN1cHBvcnQgYnVpbGRpbmcKPiBTb2MgUmszMzk5IGNsb2NrIGRyaXZlciBhcyBtb2R1
bGUuCj4KPiBTaWduZWQtb2ZmLWJ5OiBFbGFpbmUgWmhhbmcgPHpoYW5ncWluZ0Byb2NrLWNoaXBz
LmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1yazMzOTkuYyB8IDU1ICsr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgIDEgZmlsZSBjaGFuZ2VkLCA1NSBpbnNl
cnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLXJrMzM5
OS5jIGIvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLXJrMzM5OS5jCj4gaW5kZXggY2UxZDI0NDZm
MTQyLi40MGZmMTdhZWU1YjYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xr
LXJrMzM5OS5jCj4gKysrIGIvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLXJrMzM5OS5jCj4gQEAg
LTUsOSArNSwxMSBAQAo+ICAgICovCj4gICAKPiAgICNpbmNsdWRlIDxsaW51eC9jbGstcHJvdmlk
ZXIuaD4KPiArI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgo+ICAgI2luY2x1ZGUgPGxpbnV4L2lv
Lmg+Cj4gICAjaW5jbHVkZSA8bGludXgvb2YuaD4KPiAgICNpbmNsdWRlIDxsaW51eC9vZl9hZGRy
ZXNzLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9vZl9kZXZpY2UuaD4KPiAgICNpbmNsdWRlIDxsaW51
eC9wbGF0Zm9ybV9kZXZpY2UuaD4KPiAgICNpbmNsdWRlIDxsaW51eC9yZWdtYXAuaD4KPiAgICNp
bmNsdWRlIDxkdC1iaW5kaW5ncy9jbG9jay9yazMzOTktY3J1Lmg+Cj4gQEAgLTE2MDAsMyArMTYw
Miw1NiBAQCBzdGF0aWMgdm9pZCBfX2luaXQgcmszMzk5X3BtdV9jbGtfaW5pdChzdHJ1Y3QgZGV2
aWNlX25vZGUgKm5wKQo+ICAgCXJvY2tjaGlwX2Nsa19vZl9hZGRfcHJvdmlkZXIobnAsIGN0eCk7
Cj4gICB9Cj4gICBDTEtfT0ZfREVDTEFSRShyazMzOTlfY3J1X3BtdSwgInJvY2tjaGlwLHJrMzM5
OS1wbXVjcnUiLCByazMzOTlfcG11X2Nsa19pbml0KTsKPiArCj4gK3N0cnVjdCBjbGtfcmszMzk5
X2luaXRzIHsKPiArCQl2b2lkICgqaW5pdHMpKHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnApOwo+ICt9
Owo+ICsKPiArc3RhdGljIGNvbnN0IHN0cnVjdCBjbGtfcmszMzk5X2luaXRzIGNsa19yazMzOTlf
cG11Y3J1X2luaXQgPSB7Cj4gKwkuaW5pdHMgPSByazMzOTlfcG11X2Nsa19pbml0LAo+ICt9Owo+
ICsKPiArc3RhdGljIGNvbnN0IHN0cnVjdCBjbGtfcmszMzk5X2luaXRzIGNsa19yazMzOTlfY3J1
X2luaXQgPSB7Cj4gKwkuaW5pdHMgPSByazMzOTlfY2xrX2luaXQsCj4gK307Cj4gKwo+ICtzdGF0
aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBjbGtfcmszMzk5X21hdGNoX3RhYmxlW10gPSB7
Cj4gKwl7Cj4gKwkJLmNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszMzk5LWNydSIsCj4gKwkJLmRh
dGEgPSAmY2xrX3JrMzM5OV9jcnVfaW5pdCwKPiArCX0sICB7Cj4gKwkJLmNvbXBhdGlibGUgPSAi
cm9ja2NoaXAscmszMzk5LXBtdWNydSIsCj4gKwkJLmRhdGEgPSAmY2xrX3JrMzM5OV9wbXVjcnVf
aW5pdCwKPiArCX0sCj4gKwl7IH0KPiArfTsKPiArTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgY2xr
X3JrMzM5OV9tYXRjaF90YWJsZSk7Cj4gKwo+ICtzdGF0aWMgaW50IF9faW5pdCBjbGtfcmszMzk5
X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gK3sKPiArCXN0cnVjdCBkZXZp
Y2Vfbm9kZSAqbnAgPSBwZGV2LT5kZXYub2Zfbm9kZTsKPiArCWNvbnN0IHN0cnVjdCBvZl9kZXZp
Y2VfaWQgKm1hdGNoOwo+ICsJY29uc3Qgc3RydWN0IGNsa19yazMzOTlfaW5pdHMgKmluaXRfZGF0
YTsKPiArCj4gKwltYXRjaCA9IG9mX21hdGNoX2RldmljZShjbGtfcmszMzk5X21hdGNoX3RhYmxl
LCAmcGRldi0+ZGV2KTsKPiArCWlmICghbWF0Y2ggfHwgIW1hdGNoLT5kYXRhKQo+ICsJCXJldHVy
biAtRUlOVkFMOwo+ICsKPiArCWluaXRfZGF0YSA9IG1hdGNoLT5kYXRhOwo+ICsJaWYgKGluaXRf
ZGF0YS0+aW5pdHMpCj4gKwkJaW5pdF9kYXRhLT5pbml0cyhucCk7Cj4gKwo+ICsJcmV0dXJuIDA7
Cj4gK30KPiArCj4gK3N0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIGNsa19yazMzOTlfZHJp
dmVyID0gewo+ICsJLmRyaXZlcgkJPSB7Cj4gKwkJLm5hbWUJPSAiY2xrLXJrMzM5OSIsCj4gKwkJ
Lm9mX21hdGNoX3RhYmxlID0gY2xrX3JrMzM5OV9tYXRjaF90YWJsZSwKPiArCX0sCj4gK307Cj4g
K2J1aWx0aW5fcGxhdGZvcm1fZHJpdmVyX3Byb2JlKGNsa19yazMzOTlfZHJpdmVyLCBjbGtfcmsz
Mzk5X3Byb2JlKTsKPiArCj4gK01PRFVMRV9ERVNDUklQVElPTigiUm9ja2NoaXAgUkszMzk5IENs
b2NrIERyaXZlciIpOwo+ICtNT0RVTEVfTElDRU5TRSgiR1BMIik7Cj4gK01PRFVMRV9BTElBUygi
cGxhdGZvcm06Y2xrLXJrMzM5OSIpOwoKVGhpcyBsb29rcyBnb29kIHRvIG1lLCBzbwoKUmV2aWV3
ZWQtYnk6IEtldmVyIFlhbmcgPGtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+CgpUaGFua3MsCgot
IEtldmVyCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
