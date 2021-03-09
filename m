Return-Path: <SRS0=gCTq=IH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93684C433E0
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Mar 2021 11:42:55 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2784E6525B
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Mar 2021 11:42:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2784E6525B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pcrkz29Q3TbyRnEB18jLKiC8f4ODlaQZL0GY3BBLkP0=; b=qGJ0BV6jU/goRWJrGj1V/wSzG
	V3HFbKHrXUk22G/YaFJv3fC3fPlcI2jJ4b4LIQtk7425nxc6gyBUS4UMJeC6AE+5Ks5UPWX8oKp9B
	5dTqkxBnm0klq7mXGXpjyIGQ9FWT2KAeFsoJn8JarALA8i3A2FZp01Kg4RIvkNEpg2Xx8stjQNRX4
	MNpizt+c4CnMcmhp7zXVp0o4UC1laL59LmcUhgV+fBbVO4s1TVipKR1e97g+2XpqR3zm8Tma3hvm+
	6WGmN2qfFzn2fpk8yZEnPmITT4gcMfLXJVFQd3eYkAr7ZgjeEYpKvrVVMshoefwVrz9UrZ8mbM5h6
	T7tSoPJOg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJalE-004M7E-84; Tue, 09 Mar 2021 11:42:48 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJalA-004M5v-NG; Tue, 09 Mar 2021 11:42:46 +0000
Received: by mail-ed1-x531.google.com with SMTP id t1so19419131eds.7;
 Tue, 09 Mar 2021 03:42:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=A6bIv+p3szTuEIXXM2XphhkvFikVXUeMFjbmhdY08N8=;
 b=seKe5sEbHQa2kiM0aglI977bXPLc7n2L9EqPWPTJOMEnPVhhuyIHSFyPYkIdVfACDn
 x3mN+QytQkoPj5UiQVGQ2pRd6re8ZDWsyMZDWmEJjYZZbDdm9r/SiArFBrwMrtDPiZ9C
 NzLI/p4c856hviBTwjM5QeoxaovTdWN38ihnqEeqvvxo8W3baQdCRWtP4OROgLu4iNlY
 d5AWq26xMBjIvnfHHDuox2HdbaxCbS4upaUh2jdEhnhGom4IlOuNoBoAMnML8x0Rit6+
 tiyQegUOWvCqZ+YHsX/lEcEAKAfym5Tn0hl+EWuqnUB5KqRGcq1K7aHA6ZI7wR0D9rr5
 KIPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=A6bIv+p3szTuEIXXM2XphhkvFikVXUeMFjbmhdY08N8=;
 b=BJ61dbOsIidNnUSAIBnvtGMK7QgMfKNdXluQ1OYVNER9OE+T21QE61WglejQxNTJLv
 3lzFxjcms+/0JsGgrZznr1lB4q+YtDNHVVWlYHLFmcXaNjFQkD5kqcDY2jkM6zdpeOYQ
 pZlnlTUeEf7phzJHZCJ2MlshsLDTstL03L9OFPh0KQH2lZqEeL1qdmFvM6QVIoSCLOG6
 VKramGuhhTsRLdy2L7vOQVIhYKimtbp7jfyT74qIXSNbpcQwuDNVzgWl5TwODN0Nso1/
 ubvwraK6hWWKWkMNLCe14dNIibbKDnSu86OK8Em16uPTVPdiAmKHLLpE2K/ML4+zaj4W
 SRMA==
X-Gm-Message-State: AOAM530La387gobsGmqHujh2lD8+8KEXnaUfDic8AZNemIzMJ84qGdMo
 OICyllQ96DY625ZKihLB7Io=
X-Google-Smtp-Source: ABdhPJxZEHCNsHJ/oZO4KUI9IfkOvyl87o8wDz3iKGCTcntvjFUWE1J5tlAp4nXyDD67Iv0XoGbqUQ==
X-Received: by 2002:a05:6402:12cf:: with SMTP id
 k15mr3458170edx.192.1615290163721; 
 Tue, 09 Mar 2021 03:42:43 -0800 (PST)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 a22sm8397139ejr.89.2021.03.09.03.42.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Mar 2021 03:42:43 -0800 (PST)
Subject: Re: [RESEND PATCH v5 2/4] arm64: dts: rk3399: Add dfi and dmc nodes.
To: Daniel Lezcano <daniel.lezcano@linaro.org>, heiko@sntech.de
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 Lin Huang <hl@rock-chips.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 =?UTF-8?Q?Ga=c3=abl_PORTAY?= <gael.portay@collabora.com>,
 Rob Herring <robh+dt@kernel.org>, Helen Koike <helen.koike@collabora.com>,
 Chen-Yu Tsai <wens@csie.org>, Jacob Chen <jacob2.chen@rock-chips.com>,
 Shunqian Zheng <zhengsq@rock-chips.com>, Robin Murphy
 <robin.murphy@arm.com>, Boris Brezillon <boris.brezillon@collabora.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
References: <20210308233858.24741-1-daniel.lezcano@linaro.org>
 <20210308233858.24741-2-daniel.lezcano@linaro.org>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <9c36893a-6ca8-dade-e203-890a4071bf50@gmail.com>
Date: Tue, 9 Mar 2021 12:42:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20210308233858.24741-2-daniel.lezcano@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210309_114244_985572_E5777421 
X-CRM114-Status: GOOD (  17.92  )
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

SGkgRGFuaWVsLAoKU29tZSBjb21tZW50cy4gSGF2ZSBhIGxvb2sgaWYgaXQncyB1c2VmdWwgb3Ig
dGhhdCB5b3UgZGlzYWdyZWUgd2l0aC4KCk5ldyBub2RlcyBzaG91bGQgYmUgdmVyaWZpYWJsZSBp
ZiBwb3NzaWJsZS4KRXNwZWNpYWxseSB3aXRoIHNvIG1hbnkgcHJvcGVydGllcy4KQ291bGQgeW91
IGNvbnZlcnQgcm9ja2NoaXAtZGZpLnR4dCBhbmQgcmszMzk5X2RtYy50eHQgdG8geWFtbCBpbnN0
ZWFkIG9mCmNoYW5naW5nIG9sZCB0eHQgZG9jdW1lbnRzPwpBZGQgcm9ja2NoaXAtZGZpLnlhbWwg
YW5kIHJrMzM5OV9kbWMueWFtbCBiZWZvcmUgdGhpcyBwYXRjaCBpbiB2ZXJzaW9uIDYuCgpOb2Rl
cyBhbmQgcHJvcGVydGllcyBoYXZlIGEgc29ydCBvcmRlci4gUGxlYXNlIGZpeC4KU29tZSBnb2Vz
IGZvciBbUkVTRU5EIFBBVENIIHY1IDMvNF0uCgooVGhpcyBpcyBhIGdlbmVyaWMgZHRzaS4gSG93
IGFib3V0IGNvb2xpbmcgYW5kIGRtYyA/PykKCi0tLS0KSGVpa28gcnVsZXM6Cgpjb21wYXRpYmxl
CnJlZwppbnRlcnJ1cHRzClthbHBoYWJldGljYWxdCnN0YXR1cyBbaWYgbmVlZGVkXQoKLS0tLQpN
eSBpbmNvbXBsZXRlIGxpc3Q6CgpGb3Igbm9kZXM6CklmIGV4aXN0cyBvbiB0b3A6IG1vZGVsLCBj
b21wYXRpYmxlIGFuZCBjaG9zZW4uClNvcnQgdGhpbmdzIHdpdGhvdXQgcmVnIGFscGhhYmV0aWNh
bCBmaXJzdCwKdGhlbiBzb3J0IHRoZSByZXN0IGJ5IHJlZyBhZGRyZXNzLgoKSW5zaWRlIG5vZGVz
OgpJZiBleGlzdHMgb24gdG9wOiBjb21wYXRpYmxlLCByZWcgYW5kIGludGVycnVwdHMuCkluIGFs
cGhhYmV0aWNhbCBvcmRlciB0aGUgcmVxdWlyZWQgcHJvcGVydGllcy4KVGhlbiBpbiBhbHBoYWJl
dGljYWwgb3JkZXIgdGhlIG90aGVyIHByb3BlcnRpZXMuCkFuZCBhcyBsYXN0IHRoaW5ncyB0aGF0
IHN0YXJ0IHdpdGggJyMnIGluIGFscGhhYmV0aWNhbCBvcmRlci4KQWRkIHN0YXR1cyBiZWxvdyBh
bGwgb3RoZXIgcHJvcGVydGllcyBmb3Igc29jIGludGVybmFsIGNvbXBvbmVudHMgd2l0aAphbnkg
Ym9hcmQtc3BlY2lmaWNzLgpLZWVwIGFuIGVtcHR5IGxpbmUgYmV0d2VlbiBwcm9wZXJ0aWVzIGFu
ZCBub2Rlcy4KCkV4Y2VwdGlvbnM6ClNvcnQgcGluY3RybC0wIGFib3ZlIHBpbmN0cmwtbmFtZXMs
IHNvIGl0IHN0YXlzIGluIGxpbmUgd2l0aCBjbG9jay1uYW1lcwphbmQgZG1hLW5hbWVzLgpTb3J0
IHNpbXBsZS1hdWRpby1jYXJkLG5hbWUgYWJvdmUgb3RoZXIgc2ltcGxlLWF1ZGlvLWNhcmQgcHJv
cGVydGllcy4KU29ydCByZWd1bGF0b3ItbmFtZSBhYm92ZSBvdGhlciByZWd1bGF0b3IgcHJvcGVy
dGllcy4KU29ydCByZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCBhYm92ZSByZWd1bGF0b3ItbWF4LW1p
Y3Jvdm9sdC4KCk9uIDMvOS8yMSAxMjozOCBBTSwgRGFuaWVsIExlemNhbm8gd3JvdGU6Cj4gRnJv
bTogTGluIEh1YW5nIDxobEByb2NrLWNoaXBzLmNvbT4KPiAKPiBUaGVzZSBhcmUgcmVxdWlyZWQg
dG8gc3VwcG9ydCBERFIgRFZGUyBvbiByazMzOTkgcGxhdGZvcm0uCj4gCj4gU2lnbmVkLW9mZi1i
eTogTGluIEh1YW5nIDxobEByb2NrLWNoaXBzLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBFbnJpYyBC
YWxsZXRibyBpIFNlcnJhIDxlbnJpYy5iYWxsZXRib0Bjb2xsYWJvcmEuY29tPgo+IFNpZ25lZC1v
ZmYtYnk6IEdhw6tsIFBPUlRBWSA8Z2FlbC5wb3J0YXlAY29sbGFib3JhLmNvbT4KPiBTaWduZWQt
b2ZmLWJ5OiBEYW5pZWwgTGV6Y2FubyA8ZGFuaWVsLmxlemNhbm9AbGluYXJvLm9yZz4KPiAtLS0K
PiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkuZHRzaSB8IDE5ICsrKysrKysr
KysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKykKPiAKPiBkaWZm
IC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkuZHRzaSBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LmR0c2kKPiBpbmRleCBlZGJiZjM1ZmUxOWUu
LjZmMjNkOTkyMzZmZSAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzM5OS5kdHNpCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTku
ZHRzaQo+IEBAIC0xOTM3LDYgKzE5MzcsMjUgQEAKPiAgCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+
ICAJfTsKPiAgCj4gKwlkZmk6IGRmaUBmZjYzMDAwMCB7Cj4gKwkJcmVnID0gPDB4MDAgMHhmZjYz
MDAwMCAweDAwIDB4NDAwMD47Cj4gKwkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazMzOTktZGZp
IjsKPiArCQlyb2NrY2hpcCxwbXUgPSA8JnBtdWdyZj47Cj4gKwkJaW50ZXJydXB0cyA9IDxHSUNf
U1BJIDEzMSBJUlFfVFlQRV9MRVZFTF9ISUdIIDA+Owo+ICsJCWNsb2NrcyA9IDwmY3J1IFBDTEtf
RERSX01PTj47Cj4gKwkJY2xvY2stbmFtZXMgPSAicGNsa19kZHJfbW9uIjsKPiArCQlzdGF0dXMg
PSAiZGlzYWJsZWQiOwo+ICsJfTsKPiArCj4gKwlkbWM6IGRtYyB7Cj4gKwkJY29tcGF0aWJsZSA9
ICJyb2NrY2hpcCxyazMzOTktZG1jIjsKPiArCQlyb2NrY2hpcCxwbXUgPSA8JnBtdWdyZj47Cj4g
KwkJZGV2ZnJlcS1ldmVudHMgPSA8JmRmaT47Cj4gKwkJY2xvY2tzID0gPCZjcnUgU0NMS19ERFJD
PjsKPiArCQljbG9jay1uYW1lcyA9ICJkbWNfY2xrIjsKPiArCQlzdGF0dXMgPSAiZGlzYWJsZWQi
Owo+ICsJfTsKPiArCj4gIAlwaW5jdHJsOiBwaW5jdHJsIHsKPiAgCQljb21wYXRpYmxlID0gInJv
Y2tjaGlwLHJrMzM5OS1waW5jdHJsIjsKPiAgCQlyb2NrY2hpcCxncmYgPSA8JmdyZj47Cj4gCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
