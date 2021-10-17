Return-Path: <SRS0=g7df=PF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4803C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Oct 2021 19:52:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 624F360EE9
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Oct 2021 19:52:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 624F360EE9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yuO/gKkrB/a/pxxmpSZs836URFMBAhg1nIHZ7B3FDFA=; b=vjBJx+Dx0vANhkRMDH+MXFcFfX
	hIq4F72kZx+ufXK6r/kE/dMRmRsZrX5aVX6HlocLoz2vJhQrlDG4ln+YXZuYaVZC9zKxnFbXEDAeG
	pnbyZxqRdRQuCOgMWh6PEqjOE8/YCtGHOaZFUMp1Cx684314/QJGoKuKiyU7o+RsK13zGV006y2Dn
	FHSr6J/bEPuZKRfhYZF+DSe6C3/JRSa8B7XWwRv+fP4XADZe6Fgvn6ZfivnzP8SMiL/TET1AgwoyO
	2RzL8PmpQVxo5Afjhi/nMduAhf3Yg6Stf0tqVTc6d8e1bPNPo6xYtdzQGbT80UvrnFyOxniZEXf27
	XiO39lMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mcCCP-00DEjp-22; Sun, 17 Oct 2021 19:52:01 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mcCCL-00DEig-V4
 for linux-rockchip@lists.infradead.org; Sun, 17 Oct 2021 19:51:59 +0000
Received: by mail-wm1-x333.google.com with SMTP id
 u8-20020a05600c440800b0030d90076dabso4767841wmn.1
 for <linux-rockchip@lists.infradead.org>; Sun, 17 Oct 2021 12:51:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=C+4nWeup4/gwCXQu3XhO8jC3A9rFG74OE5AqXe6N5nE=;
 b=X/1kP4zKJH1etPW4lSUQTjGY6eE9Cuh5mzx5wZcf9WX/1QQl0oZAdreBBEDfJVA0Ui
 9xVqu6tNklEwNV5mbBTLnHYBGOkSQ3RVuFgcGlFgd0RjFxU+8oMO4fsuw2e+Yo61Tf1Q
 IykFRd9dFGqlCt6q6Znq38z/OufcdTm9R4KgSZSAUJq/kxROkY3aQyvI10CpGpfXq/Xa
 mJ//aFAqRNDHh3+h6X5svRvqei76KP/ynqzu7pXjUgG/305cUNs/yzsxtgPr8x7eMJOE
 Kk5DfXmN0OdMJ/gHY0L2I8itU6d6nGHRM9F73k61D602WcdN4fVyM87vRdJ0DwMpkc+2
 YqMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=C+4nWeup4/gwCXQu3XhO8jC3A9rFG74OE5AqXe6N5nE=;
 b=OB+E3cJi37IpkxXx2fuxygRzeeHX/S82wzsQ0Xm5kGr4IVHWQP4LTtUcNlU8rmPe5C
 PmsUH03421v434SMh0wnutyJKTg2sjUhAlbKxLUJ3SOrMRJBQTp1bWR3LdXJ8keYjdFc
 lLYRQMeqRH1HBPUi83fqglK9CgcBk+bjP1mrlSXD3XfbwFdINXwI5znA1/Lj18jsbGpL
 a4W4S+hy1twns2RFlrrq1uOLEqPQVciUxHGSalaActXERPKEbFMmXlzGAVQhc0bveVfc
 +JuA2iBGBo9N8aiKc+KPCkDav5uOp3r6h58ojTWSQivKJG4N0ZOJMQs04+Nfqt/7UiLc
 t0ng==
X-Gm-Message-State: AOAM533QBnJSAl46+2MbOG7y2CbjvEytzkGkqd2ZkyB8sOiFlWBUnWJZ
 UEj1jNtVvjSI+a21/8mOY+GsJA==
X-Google-Smtp-Source: ABdhPJzm4jJHZqzptEO4ig0kyyTjsFhOTlsYY4qmJXIj7kj6iHgzWlYjSkLZhJdeYoYlmof/QWKVFQ==
X-Received: by 2002:a1c:f402:: with SMTP id z2mr40809445wma.53.1634500315582; 
 Sun, 17 Oct 2021 12:51:55 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:b2b3:1133:5bdb:b2f2?
 ([2a01:e34:ed2f:f020:b2b3:1133:5bdb:b2f2])
 by smtp.googlemail.com with ESMTPSA id l2sm17396892wmi.1.2021.10.17.12.51.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 17 Oct 2021 12:51:55 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: rockchip: Add idle cooling devices
To: Heiko Stuebner <heiko@sntech.de>
Cc: robh+dt@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20211001161728.1729664-1-daniel.lezcano@linaro.org>
 <2808512.kKcWQYovEV@phil>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <30f0cbda-5172-6af1-c06d-2e9c4b96d46b@linaro.org>
Date: Sun, 17 Oct 2021 21:51:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <2808512.kKcWQYovEV@phil>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211017_125158_095106_C3F803A5 
X-CRM114-Status: GOOD (  21.41  )
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

CkhpIEhlaWtvLAoKCk9uIDE3LzEwLzIwMjEgMTI6MTMsIEhlaWtvIFN0dWVibmVyIHdyb3RlOgo+
IEhpIERhbmllbCwKPiAKPiBBbSBGcmVpdGFnLCAxLiBPa3RvYmVyIDIwMjEsIDE4OjE3OjI4IENF
U1Qgc2NocmllYiBEYW5pZWwgTGV6Y2FubzoKPj4gVGhlIHRoZXJtYWwgZnJhbWV3b3JrIGFjY2Vw
dHMgbm93IHRoZSBjcHUgaWRsZSBjb29saW5nIGRldmljZSBhcyBhbgo+PiBhbHRlcm5hdGl2ZSB3
aGVuIHRoZSBjcHVmcmVxIGNvb2xpbmcgZGV2aWNlIGZhaWxzLgo+Pgo+PiBBZGQgdGhlIG5vZGUg
aW4gdGhlIERUIHNvIHRoZSBjb29saW5nIGRldmljZXMgd2lsbCBiZSBwcmVzZW50IGFuZCB0aGUK
Pj4gcGxhdGZvcm1zIGNhbiBleHRlbmQgdGhlIHRoZXJtYWwgem9uZSBkZWZpbml0aW9uIHRvIGFk
ZCB0aGVtLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgTGV6Y2FubyA8ZGFuaWVsLmxlemNh
bm9AbGluYXJvLm9yZz4KPj4gLS0tCj4+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzM5OS5kdHNpIHwgMTAgKysrKysrKysrKwo+PiAgMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlv
bnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
Mzk5LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS5kdHNpCj4+IGlu
ZGV4IDM4NzFjN2ZkODNiMC4uOWFjMjMyZmZkMjg0IDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS5kdHNpCj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszMzk5LmR0c2kKPj4gQEAgLTEyNCw2ICsxMjQsMTEgQEAgY3B1X2IwOiBj
cHVAMTAwIHsKPj4gIAkJCSNjb29saW5nLWNlbGxzID0gPDI+OyAvKiBtaW4gZm9sbG93ZWQgYnkg
bWF4ICovCj4+ICAJCQlkeW5hbWljLXBvd2VyLWNvZWZmaWNpZW50ID0gPDQzNj47Cj4+ICAJCQlj
cHUtaWRsZS1zdGF0ZXMgPSA8JkNQVV9TTEVFUCAmQ0xVU1RFUl9TTEVFUD47Cj4+ICsJCQl0aGVy
bWFsLWlkbGUgewo+PiArCQkJCSNjb29saW5nLWNlbGxzID0gPDI+Owo+PiArCQkJCWR1cmF0aW9u
LXVzID0gPDEwMDAwPjsKPj4gKwkJCQlleGl0LWxhdGVuY3ktdXMgPSA8NTAwPjsKPj4gKwkJCX07
Cj4gCj4gSSBndWVzcyB0aGUgYmFzaWMgcXVlc3Rpb24gd291bGQgYmUgd2hlcmUgZG8gdGhlIGR1
cmF0aW9uCj4gYW5kIGV4aXQtbGF0ZW5jeSB2YWx1ZXMgY29tZSBmcm9tLiBBbmQgYWxzbyB3aGF0
IGhhcHBlbmVkCj4gdG8gY3B1X2wwLWwzIChha2EgdGhlIGxpdHRsZSBjb3Jlcyk/CgpUaGUgZHVy
YXRpb24gaXMgYW4gYXJiaXRyYXJ5IHZhbHVlLCBJJ3ZlIGRvbmUgc29tZSB0ZXN0aW5nIFsxXSB0
byBjb29sCmRvd24gdGhlIENQVS4KClRoZSBleGl0LWxhdGVuY3kgaXMgYSB2YWx1ZSB0byBpZ25v
cmUgaWRsZSBzdGF0ZXMgd2l0aCBncmVhdGVyIGV4aXQKbGF0ZW5jeS4gSW4gb3VyIGNhc2UsIGl0
IGRpc2NhcmRzIHRoZSBjbHVzdGVyIHBvd2VyIGRvd24gc3RhdGUuCgpNeSBleHBlcmltZW50cyBv
biB0aGlzIHBsYXRmb3JtIHNob3dlZCB0aGUgbGl0dGxlIGNsdXN0ZXIgZG9lcyBub3QKY29udHJp
YnV0ZSBzaWduaWZpY2FudGx5IHRvIHRoZSBoZWF0LCBzbyBoYXZpbmcgaWRsZSBpbmplY3Rpb24g
aXMgbm90CnJlYWxseSB1c2VmdWwuCgpKdXN0IHRvIGNsYXJpZnkgdGhhdCBpZGxlIGluamVjdGlv
biBpcyBub3QgYmV0dGVyIHRoYW4gZHZmcywgaXQgY2FuIGJlCnVzZWQgaW4gYWRkaXRpb24gb3Ig
YXMgYSBiYWNrdXAgc29sdXRpb24gaWYgdGhlIGR2ZnMgZmFpbHMuIFRoYXQgaXMgdGhlCnJlYXNv
biB3aHkgdGhlcmUgaXMgbm8gc2V0dXAgZm9yIHRoZSB0aGVybWFsIHpvbmVzLgoKWzFdIGh0dHBz
Oi8vd3d3LmxpbmFyby5vcmcvYmxvZy9mb3JjZS1pZGxlLXdoZW4tYS1jcHUtaXMtb3ZlcmhlYXRp
bmcvCgo+PiAgCQl9Owo+PiAgCj4+ICAJCWNwdV9iMTogY3B1QDEwMSB7Cj4+IEBAIC0xMzYsNiAr
MTQxLDExIEBAIGNwdV9iMTogY3B1QDEwMSB7Cj4+ICAJCQkjY29vbGluZy1jZWxscyA9IDwyPjsg
LyogbWluIGZvbGxvd2VkIGJ5IG1heCAqLwo+PiAgCQkJZHluYW1pYy1wb3dlci1jb2VmZmljaWVu
dCA9IDw0MzY+Owo+PiAgCQkJY3B1LWlkbGUtc3RhdGVzID0gPCZDUFVfU0xFRVAgJkNMVVNURVJf
U0xFRVA+Owo+PiArCQkJdGhlcm1hbC1pZGxlIHsKPj4gKwkJCQkjY29vbGluZy1jZWxscyA9IDwy
PjsKPj4gKwkJCQlkdXJhdGlvbi11cyA9IDwxMDAwMD47Cj4+ICsJCQkJZXhpdC1sYXRlbmN5LXVz
ID0gPDUwMD47Cj4+ICsJCQl9Owo+PiAgCQl9Owo+PiAgCj4+ICAJCWlkbGUtc3RhdGVzIHsKPj4K
PiAKPiAKPiAKPiAKCgotLSAKPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSC
IE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9sbG93IExpbmFybzogIDxodHRw
Oi8vd3d3LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90d2l0
dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xp
bmFyby1ibG9nLz4gQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
