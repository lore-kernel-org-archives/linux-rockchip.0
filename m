Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF15EC28CF5
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Jan 2022 09:37:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CxjWlZn8cIFYnBQ1ZWsZObNdW4dgwIummEhN9ETbv7M=; b=I8ieSiH/RHKeMv6s4Lhl58Xw+/
	wkfVKX1/40qjsIKuB2QgiCfhY4s0WBsQEqBFnhVTiOBc7zfs9jJNlPYLo9AHS6rRMRZRn4/Gnpc9L
	UuFq0khAHwYn8GUbFTZ/CSw4ebbJKVwTET20fq5pclZEdcQMQOzotXp0Pq3w5xBzq0TZb9+7TT9cK
	AnMoLaTRTfpt1QkqDWeD43NFOQfohoQcR4kU5TJfY4d7ZxTlBgiFnO4wwEwiMqpruKu+Xcz1BFEAd
	5Z1Bc9R9pnaDSBteAJkP+itVs+5NPCD40Q1hH9z+0XRhAyRkTMpOlHcuOIDdoam6b+y+wvJeaSFzK
	URUcoukw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCekH-00B0sr-CS; Wed, 26 Jan 2022 09:37:41 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCejF-00B0aD-Hy
 for linux-rockchip@lists.infradead.org; Wed, 26 Jan 2022 09:36:41 +0000
Received: by mail-wr1-x42d.google.com with SMTP id e2so9251262wra.2
 for <linux-rockchip@lists.infradead.org>; Wed, 26 Jan 2022 01:36:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=+cJdKrQBbtFl4PCCfmc5IKpii91wqwE6nOEX76XsXzw=;
 b=WjMWLcyAVG4mrCnc/LPX+4zMi8zuj0DdLNl4JrzuDlW8nhtdWBhh0GJ2AR0bNzN8kh
 RoxsssydBHZ6Sd+ZtivTdDLCja6oNInbRN1rl8RJ6xGzXstIJ16KeGA4FAgpPFwkr3ug
 KG+hV4EgLaHzQ1iFjJG8r8nMGotczpafR+CXM0XUvxfatZOX8hG31r0ajYqgSfuk/iq1
 OuA1nMiERRu6aiO7fZzZfe8XL5HjDJ5xKLbYMU5ZoDo1xaKhizVkjfhWUvlbhtaSji9W
 NOvrUoLL1CcgdVWuLHCNmYlukhaXeQUGjEDTUcx1n/RK3UuAKO0LdWrmRPuWOraSsmAQ
 3Cjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+cJdKrQBbtFl4PCCfmc5IKpii91wqwE6nOEX76XsXzw=;
 b=zXf6xMTrZUWBxQA0+o1t6dr/7wA5hcai7biR/rmQJaK7V0eDqi/f/99zoPrzZDkS+W
 FNK4RLbNirkD3zgXk7uG8glRkRky1krw5/PNsE1XVhdfC+QdYtONsiy2mWCfK6IoVDMB
 RcB6KW7bqV+xsFZz47RBRlgBsu72ipYMsKRE/aKKIxPWaBmWId8zEhfY4+FTn/HBRM1C
 GpvXlOTRKLwazGzJlB1rZ/XaX6cullBRu9AxxAnQlJtxxOU13GR7Aux9NZvN5Fc5l6Y+
 5HcHWIoW1Gt9GFP7AIPu4g0KYatRxnJS0a7N73aKic0uOsTEtaFLUlFqAJ8Md1YSBORG
 0rRA==
X-Gm-Message-State: AOAM533MsY5x63VDM+hq2XGPYMVikJnHDTi9ucn6jeMPbvjr59ZFQpEP
 JY5RzwTeM6gRu2Khi5hDAgkA+w==
X-Google-Smtp-Source: ABdhPJwZ7RIf1Mv26UmtNuw4VQZ0frbLNOe8nDz8itMxjbg0gojSWqRwnq7wNETXijrc/qdguRGr1Q==
X-Received: by 2002:adf:fe51:: with SMTP id m17mr21015037wrs.441.1643189794278; 
 Wed, 26 Jan 2022 01:36:34 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:f589:cf7d:b2ee:bb5e?
 ([2a01:e34:ed2f:f020:f589:cf7d:b2ee:bb5e])
 by smtp.googlemail.com with ESMTPSA id h4sm22800855wre.0.2022.01.26.01.36.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 26 Jan 2022 01:36:33 -0800 (PST)
Subject: Re: [PATCH v7 5/5] rockchip/soc/drivers: Add DTPM description for
 rk3399
To: heiko@sntech.de
Cc: robh@kernel.org, lukasz.luba@arm.com, arnd@linaro.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 rjw@rjwysocki.net
References: <20220125171809.1273269-1-daniel.lezcano@linaro.org>
 <20220125171809.1273269-6-daniel.lezcano@linaro.org>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <f91ac11e-82bf-2803-bb22-1a4500f07468@linaro.org>
Date: Wed, 26 Jan 2022 10:36:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20220125171809.1273269-6-daniel.lezcano@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220126_013637_695325_AA91C462 
X-CRM114-Status: GOOD (  28.56  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CkhpIEhlaWtvLAoKZG8geW91IGhhdmUgY29tbWVudHMgb24gdGhpcyBwYXRjaD8KCgpPbiAyNS8w
MS8yMDIyIDE4OjE4LCBEYW5pZWwgTGV6Y2FubyB3cm90ZToKPiBUaGUgRFRQTSBmcmFtZXdvcmsg
ZG9lcyBzdXBwb3J0IG5vdyB0aGUgaGllcmFyY2h5IGRlc2NyaXB0aW9uLgo+IAo+IFRoZSBwbGF0
Zm9ybSBzcGVjaWZpYyBjb2RlIGNhbiBjYWxsIHRoZSBoaWVyYXJjaHkgY3JlYXRpb24gZnVuY3Rp
b24KPiB3aXRoIGFuIGFycmF5IG9mIHN0cnVjdCBkdHBtX25vZGUgcG9pbnRpbmcgdG8gdGhlaXIg
cGFyZW50Lgo+IAo+IFRoaXMgcGF0Y2ggcHJvdmlkZXMgYSBkZXNjcmlwdGlvbiBvZiB0aGUgYmln
IC8gTGl0dGxlIENQVXMgYW5kIHRoZQo+IEdQVSBhbmQgdGllIHRoZW0gdG9nZXRoZXIgdW5kZXIg
YSB2aXJ0dWFsICdwYWNrYWdlJyBuYW1lLiBPbmx5IHJrMzM5OSBpcwo+IGRlc2NyaWJlZCBub3cu
Cj4gCj4gVGhlIGRlc2NyaXB0aW9uIGNvdWxkIGJlIGV4dGVuZGVkIGluIHRoZSBmdXR1cmUgd2l0
aCB0aGUgbWVtb3J5Cj4gY29udHJvbGxlciB3aXRoIGRldmZyZXEuCj4gCj4gVGhlIGRlc2NyaXB0
aW9uIGlzIGFsd2F5cyBhIG1vZHVsZSBhbmQgaXQgZGVzY3JpYmVzIHRoZSBzb2Z0Cj4gZGVwZW5k
ZW5jaWVzLiBUaGUgdXNlcnNwYWNlIGhhcyB0byBsb2FkIHRoZSBzb2Z0ZGVwcyBtb2R1bGUgaW4g
dGhlCj4gcmlnaHQgb3JkZXIuCj4gCj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIExlemNhbm8gPGRh
bmllbC5sZXpjYW5vQGxpbmFyby5vcmc+Cj4gLS0tCj4gIGRyaXZlcnMvc29jL3JvY2tjaGlwL0tj
b25maWcgIHwgIDggKysrKysKPiAgZHJpdmVycy9zb2Mvcm9ja2NoaXAvTWFrZWZpbGUgfCAgMSAr
Cj4gIGRyaXZlcnMvc29jL3JvY2tjaGlwL2R0cG0uYyAgIHwgNTkgKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysKPiAgMyBmaWxlcyBjaGFuZ2VkLCA2OCBpbnNlcnRpb25zKCspCj4g
IGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3NvYy9yb2NrY2hpcC9kdHBtLmMKPiAKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9zb2Mvcm9ja2NoaXAvS2NvbmZpZyBiL2RyaXZlcnMvc29jL3JvY2tj
aGlwL0tjb25maWcKPiBpbmRleCAyNWViMmMxZTMxYmIuLjZkYzAxN2YwMjQzMSAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL3NvYy9yb2NrY2hpcC9LY29uZmlnCj4gKysrIGIvZHJpdmVycy9zb2Mvcm9j
a2NoaXAvS2NvbmZpZwo+IEBAIC0zNCw0ICszNCwxMiBAQCBjb25maWcgUk9DS0NISVBfUE1fRE9N
QUlOUwo+ICAKPiAgICAgICAgICAgIElmIHVuc3VyZSwgc2F5IE4uCj4gIAo+ICtjb25maWcgUk9D
S0NISVBfRFRQTQo+ICsJdHJpc3RhdGUgIlJvY2tjaGlwIERUUE0gaGllcmFyY2h5Igo+ICsJZGVw
ZW5kcyBvbiBEVFBNICYmIERSTV9QQU5GUk9TVCAmJiBtCj4gKwloZWxwCj4gKwkgRGVzY3JpYmUg
dGhlIGhpZXJhcmNoeSBmb3IgdGhlIER5bmFtaWMgVGhlcm1hbCBQb3dlcgo+ICsJIE1hbmFnZW1l
bnQgdHJlZSBvbiB0aGlzIHBsYXRmb3JtLiBUaGF0IHdpbGwgY3JlYXRlIGFsbCB0aGUKPiArCSBw
b3dlciBjYXBwaW5nIGNhcGFibGUgZGV2aWNlcy4KPiArCj4gIGVuZGlmCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvc29jL3JvY2tjaGlwL01ha2VmaWxlIGIvZHJpdmVycy9zb2Mvcm9ja2NoaXAvTWFr
ZWZpbGUKPiBpbmRleCA4NzUwMzJmNzM0NGUuLjA1ZjMxYTRlNzQzYyAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL3NvYy9yb2NrY2hpcC9NYWtlZmlsZQo+ICsrKyBiL2RyaXZlcnMvc29jL3JvY2tjaGlw
L01ha2VmaWxlCj4gQEAgLTUsMyArNSw0IEBACj4gIG9iai0kKENPTkZJR19ST0NLQ0hJUF9HUkYp
ICs9IGdyZi5vCj4gIG9iai0kKENPTkZJR19ST0NLQ0hJUF9JT0RPTUFJTikgKz0gaW8tZG9tYWlu
Lm8KPiAgb2JqLSQoQ09ORklHX1JPQ0tDSElQX1BNX0RPTUFJTlMpICs9IHBtX2RvbWFpbnMubwo+
ICtvYmotJChDT05GSUdfUk9DS0NISVBfRFRQTSkgKz0gZHRwbS5vCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvc29jL3JvY2tjaGlwL2R0cG0uYyBiL2RyaXZlcnMvc29jL3JvY2tjaGlwL2R0cG0uYwo+
IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwLi4wYjczYTljYmE5NTQK
PiAtLS0gL2Rldi9udWxsCj4gKysrIGIvZHJpdmVycy9zb2Mvcm9ja2NoaXAvZHRwbS5jCj4gQEAg
LTAsMCArMSw1OSBAQAo+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5
Cj4gKy8qCj4gKyAqIENvcHlyaWdodCAyMDIxIExpbmFybyBMaW1pdGVkCj4gKyAqCj4gKyAqIEF1
dGhvcjogRGFuaWVsIExlemNhbm8gPGRhbmllbC5sZXpjYW5vQGxpbmFyby5vcmc+Cj4gKyAqCj4g
KyAqIERUUE0gaGllcmFyY2h5IGRlc2NyaXB0aW9uCj4gKyAqLwo+ICsjaW5jbHVkZSA8bGludXgv
ZHRwbS5oPgo+ICsjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9v
Zi5oPgo+ICsjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+Cj4gKwo+ICtzdGF0aWMg
c3RydWN0IGR0cG1fbm9kZSBfX2luaXRkYXRhIHJrMzM5OV9oaWVyYXJjaHlbXSA9IHsKPiArCVsw
XXsgLm5hbWUgPSAicmszMzk5IiwKPiArCSAgICAgLnR5cGUgPSBEVFBNX05PREVfVklSVFVBTCB9
LAo+ICsJWzFdeyAubmFtZSA9ICJwYWNrYWdlIiwKPiArCSAgICAgLnR5cGUgPSBEVFBNX05PREVf
VklSVFVBTCwKPiArCSAgICAgLnBhcmVudCA9ICZyazMzOTlfaGllcmFyY2h5WzBdIH0sCj4gKwlb
Ml17IC5uYW1lID0gIi9jcHVzL2NwdUAwIiwKPiArCSAgICAgLnR5cGUgPSBEVFBNX05PREVfRFQs
Cj4gKwkgICAgIC5wYXJlbnQgPSAmcmszMzk5X2hpZXJhcmNoeVsxXSB9LAo+ICsJWzNdeyAubmFt
ZSA9ICIvY3B1cy9jcHVAMSIsCj4gKwkgICAgIC50eXBlID0gRFRQTV9OT0RFX0RULAo+ICsJICAg
ICAucGFyZW50ID0gJnJrMzM5OV9oaWVyYXJjaHlbMV0gfSwKPiArCVs0XXsgLm5hbWUgPSAiL2Nw
dXMvY3B1QDIiLAo+ICsJICAgICAudHlwZSA9IERUUE1fTk9ERV9EVCwKPiArCSAgICAgLnBhcmVu
dCA9ICZyazMzOTlfaGllcmFyY2h5WzFdIH0sCj4gKwlbNV17IC5uYW1lID0gIi9jcHVzL2NwdUAz
IiwKPiArCSAgICAgLnR5cGUgPSBEVFBNX05PREVfRFQsCj4gKwkgICAgIC5wYXJlbnQgPSAmcmsz
Mzk5X2hpZXJhcmNoeVsxXSB9LAo+ICsJWzZdeyAubmFtZSA9ICIvY3B1cy9jcHVAMTAwIiwKPiAr
CSAgICAgLnR5cGUgPSBEVFBNX05PREVfRFQsCj4gKwkgICAgIC5wYXJlbnQgPSAmcmszMzk5X2hp
ZXJhcmNoeVsxXSB9LAo+ICsJWzddeyAubmFtZSA9ICIvY3B1cy9jcHVAMTAxIiwKPiArCSAgICAg
LnR5cGUgPSBEVFBNX05PREVfRFQsCj4gKwkgICAgIC5wYXJlbnQgPSAmcmszMzk5X2hpZXJhcmNo
eVsxXSB9LAo+ICsJWzhdeyAubmFtZSA9ICIvZ3B1QGZmOWEwMDAwIiwKPiArCSAgICAgLnR5cGUg
PSBEVFBNX05PREVfRFQsCj4gKwkgICAgIC5wYXJlbnQgPSAmcmszMzk5X2hpZXJhcmNoeVsxXSB9
LAo+ICsJWzldeyB9LAo+ICt9Owo+ICsKPiArc3RhdGljIHN0cnVjdCBvZl9kZXZpY2VfaWQgX19p
bml0ZGF0YSByb2NrY2hpcF9kdHBtX21hdGNoX3RhYmxlW10gPSB7Cj4gKyAgICAgICAgeyAuY29t
cGF0aWJsZSA9ICJyb2NrY2hpcCxyazMzOTkiLCAuZGF0YSA9IHJrMzM5OV9oaWVyYXJjaHkgfSwK
PiArICAgICAgICB7fSwKPiArfTsKPiArCj4gK3N0YXRpYyBpbnQgX19pbml0IHJvY2tjaGlwX2R0
cG1faW5pdCh2b2lkKQo+ICt7Cj4gKwlyZXR1cm4gZHRwbV9jcmVhdGVfaGllcmFyY2h5KHJvY2tj
aGlwX2R0cG1fbWF0Y2hfdGFibGUpOwo+ICt9Cj4gK21vZHVsZV9pbml0KHJvY2tjaGlwX2R0cG1f
aW5pdCk7Cj4gKwo+ICtNT0RVTEVfU09GVERFUCgicHJlOiBwYW5mcm9zdCBjcHVmcmVxLWR0Iik7
Cj4gK01PRFVMRV9ERVNDUklQVElPTigiUm9ja2NoaXAgRFRQTSBkcml2ZXIiKTsKPiArTU9EVUxF
X0xJQ0VOU0UoIkdQTCIpOwo+ICtNT0RVTEVfQUxJQVMoInBsYXRmb3JtOmR0cG0iKTsKPiArTU9E
VUxFX0FVVEhPUigiRGFuaWVsIExlemNhbm8gPGRhbmllbC5sZXpjYW5vQGtlcm5lbC5vcmciKTsK
PiAKCgotLSAKPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSCIE9wZW4gc291
cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9sbG93IExpbmFybzogIDxodHRwOi8vd3d3LmZh
Y2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90d2l0dGVyLmNvbS8j
IS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xpbmFyby1ibG9n
Lz4gQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
