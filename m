Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8956C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jan 2022 08:44:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JWQCm3Y8fDmKQFz+A/DkKD/fjuHzENmSmXR8Cf0oRGY=; b=niF70lU5lsRXhl
	MI1vNuypUgjbjoR9JnRHvef9Ja0OhT9tmfUqaK6A5fOuPeBZGe78RLi4/8xdGmHYmDfe483D50EUP
	d5xktWzMZMUhnekm1sjn0CRZGt1BRF+HkSdCBeSj3/oMz2682meLnEJuXoNTMR0fdxyEBXAHoRuqq
	291p/cMVs3cQTubaW3Kt+cGSFIskh5KWeQPchFxATtQwsx5M6G6tchERSHIBq9H0qGkwnLsthM6PU
	+XbG1Mr1tS2bctlJKXzFfLK/XTRPSSU1Qbq/ceDXPF1DZVKR68O7XH2XOVbcSaqygttKcNwMQ0X+7
	BL1jJTZHqx+rUI9zXpvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9NcY-00E8N0-Sn; Mon, 17 Jan 2022 08:44:10 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9NcJ-00E8H3-Le; Mon, 17 Jan 2022 08:43:57 +0000
Received: by mail-lf1-x12e.google.com with SMTP id m3so40781230lfu.0;
 Mon, 17 Jan 2022 00:43:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=Gei4KEt16IF1U/BK6GOeSIu4C3tKBRM/27+JDfBhFtQ=;
 b=dIuO2s4yr24DkvXm0bbnamEQhJ8+rYgX0hnFFd/9Q+m1bY22fPF0pPRbJQnZ2ojEYY
 KDVW5IjRg3ondyg7hvQ69zhrbEgbYuMoSaj5sr+QblzM4Q+kYAgni4awP/SonC/k8vdw
 tK4TYOr6jcKK9cMG1vRLNtkAPyGFd5fA9sSC8Z/7BfBKXn8Sk29yRQnBQ9aaTGG31lDu
 5C+ODfIe0RxoSzwW95ZzJY/qEXFcf0vaIqDGpjAn/RXsb0Tm6Dsb9zyp3xeNeGgAQtCf
 UcaLJpClhY6HAvnwzA5aDLbqA4V07s09JT1FGEEvFMfC1VCtLe8JWMW1xjWv3wkzBZBU
 hMaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=Gei4KEt16IF1U/BK6GOeSIu4C3tKBRM/27+JDfBhFtQ=;
 b=FKBnjSo+IvPKO/POHNK0Z30JyAqcBXEjitqDwnsb059syznK4KzwsSUop6ODuUuXoT
 Itzy4vu9s56D7H7bUoh3zgedy5mgmBHnkBkQ3TBQWYbtpp4ZoC0K1RQ05gxmvC2EqfZF
 nBLURl9ZxEhepR0msfX2CC9BzlqO91JQpChnnrm3W9YQUMPuGfR9xk+FrOjCQp+Gzupb
 9o32hwnYknVkNoItHMrUjbo8yi10BuknenTPfwYZljberM+W9OyFt0L+CF4XV7L9s2xC
 Gr+BE+cliKm2ZDj1lDw9XADtDphrqzx8xFN1LDnjhXn4DPvVCDO7rRtKONbmVYcBaLfs
 b9DQ==
X-Gm-Message-State: AOAM533qVnVg3QKbqmXWKev1cIjLcoqJ4LflXj+FhWa1Ltzkw15QH7OB
 sTOlnnqwfPDu7fTJKc7lXIE=
X-Google-Smtp-Source: ABdhPJxbGCZ1V1SBZgWU+SbvrBUzDnpO9n3rKlbhqeqlSBmgiXMAWivPlrLqEGwTQN7JAf3Cw7X8mg==
X-Received: by 2002:ac2:596e:: with SMTP id h14mr15443046lfp.236.1642409033184; 
 Mon, 17 Jan 2022 00:43:53 -0800 (PST)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl.
 [31.178.191.245])
 by smtp.gmail.com with ESMTPSA id cf42sm1322134lfb.251.2022.01.17.00.43.52
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jan 2022 00:43:52 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH 5/9] arm64: dts: rockchip: add rk3568 tsadc nodes
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <20210728135534.703028-6-pgwipeout@gmail.com>
Date: Mon, 17 Jan 2022 09:43:49 +0100
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 linux-rockchip@lists.infradead.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Message-Id: <C3AE0A81-A829-4241-A65E-EB28825E3C33@gmail.com>
References: <20210728135534.703028-1-pgwipeout@gmail.com>
 <20210728135534.703028-6-pgwipeout@gmail.com>
To: Peter Geis <pgwipeout@gmail.com>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220117_004355_765044_5D046BD4 
X-CRM114-Status: GOOD (  19.23  )
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IFBldGVyIEdlaXMgPHBnd2lwZW91dEBnbWFp
bC5jb20+IHcgZG5pdSAyOC4wNy4yMDIxLCBvIGdvZHouIDE1OjU1Ogo+IAo+IEFkZCB0aGUgdGhl
cm1hbCBhbmQgdHNhZGMgbm9kZXMgdG8gdGhlIHJrMzU2OCBkZXZpY2UgdHJlZS4KPiBUaGVyZSBh
cmUgdHdvIHNlbnNvcnMsIG9uZSBmb3IgdGhlIGNwdSwgb25lIGZvciB0aGUgZ3B1Lgo+IAo+IFNp
Z25lZC1vZmYtYnk6IFBldGVyIEdlaXMgPHBnd2lwZW91dEBnbWFpbC5jb20+Cj4gLS0tCj4gLi4u
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1waW5jdHJsLmR0c2kgICAgIHwgIDYgKysKPiBhcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2eC5kdHNpICAgICAgfCA3MSArKysrKysrKysr
KysrKysrKysrCj4gMiBmaWxlcyBjaGFuZ2VkLCA3NyBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAt
LWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXBpbmN0cmwuZHRzaSBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXBpbmN0cmwuZHRzaQo+IGluZGV4
IGE1ODhjYTk1YWNlMi4uYjQ2NGM3YmRhMWY3IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszNTY4LXBpbmN0cmwuZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszNTY4LXBpbmN0cmwuZHRzaQo+IEBAIC0yNDIwLDYgKzI0MjAsMTIg
QEAgc3BpM20xX2NzMTogc3BpM20xLWNzMSB7Cj4gCX07Cj4gCj4gCXRzYWRjIHsKPiArCQkvb21p
dC1pZi1uby1yZWYvCj4gKwkJdHNhZGNfZ3BpbzogdHNhZGMtZ3BpbyB7Cj4gKwkJCXJvY2tjaGlw
LHBpbnMgPQo+ICsJCQkJPDAgUktfUEExIDAgJnBjZmdfcHVsbF9ub25lPjsKPiArCQl9Owo+ICsK
PiAJCS9vbWl0LWlmLW5vLXJlZi8KPiAJCXRzYWRjbTBfc2h1dDogdHNhZGNtMC1zaHV0IHsKPiAJ
CQlyb2NrY2hpcCxwaW5zID0KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1NnguZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTZ4LmR0
c2kKPiBpbmRleCA3N2M2NzkzMDQ5MTYuLjA5MDVmYWMwNzI2YSAxMDA2NDQKPiAtLS0gYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2eC5kdHNpCj4gKysrIGIvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazM1NnguZHRzaQo+IEBAIC01MSw2ICs1MSw3IEBAIGNwdTA6IGNw
dUAwIHsKPiAJCQljb21wYXRpYmxlID0gImFybSxjb3J0ZXgtYTU1IjsKPiAJCQlyZWcgPSA8MHgw
IDB4MD47Cj4gCQkJY2xvY2tzID0gPCZzY21pX2NsayAwPjsKPiArCQkJI2Nvb2xpbmctY2VsbHMg
PSA8Mj47Cj4gCQkJZW5hYmxlLW1ldGhvZCA9ICJwc2NpIjsKPiAJCQlvcGVyYXRpbmctcG9pbnRz
LXYyID0gPCZjcHUwX29wcF90YWJsZT47Cj4gCQl9Owo+IEBAIC01OSw2ICs2MCw3IEBAIGNwdTE6
IGNwdUAxMDAgewo+IAkJCWRldmljZV90eXBlID0gImNwdSI7Cj4gCQkJY29tcGF0aWJsZSA9ICJh
cm0sY29ydGV4LWE1NSI7Cj4gCQkJcmVnID0gPDB4MCAweDEwMD47Cj4gKwkJCSNjb29saW5nLWNl
bGxzID0gPDI+Owo+IAkJCWVuYWJsZS1tZXRob2QgPSAicHNjaSI7Cj4gCQkJb3BlcmF0aW5nLXBv
aW50cy12MiA9IDwmY3B1MF9vcHBfdGFibGU+Owo+IAkJfTsKPiBAQCAtNjcsNiArNjksNyBAQCBj
cHUyOiBjcHVAMjAwIHsKPiAJCQlkZXZpY2VfdHlwZSA9ICJjcHUiOwo+IAkJCWNvbXBhdGlibGUg
PSAiYXJtLGNvcnRleC1hNTUiOwo+IAkJCXJlZyA9IDwweDAgMHgyMDA+Owo+ICsJCQkjY29vbGlu
Zy1jZWxscyA9IDwyPjsKPiAJCQllbmFibGUtbWV0aG9kID0gInBzY2kiOwo+IAkJCW9wZXJhdGlu
Zy1wb2ludHMtdjIgPSA8JmNwdTBfb3BwX3RhYmxlPjsKPiAJCX07Cj4gQEAgLTc1LDYgKzc4LDcg
QEAgY3B1MzogY3B1QDMwMCB7Cj4gCQkJZGV2aWNlX3R5cGUgPSAiY3B1IjsKPiAJCQljb21wYXRp
YmxlID0gImFybSxjb3J0ZXgtYTU1IjsKPiAJCQlyZWcgPSA8MHgwIDB4MzAwPjsKPiArCQkJI2Nv
b2xpbmctY2VsbHMgPSA8Mj47Cj4gCQkJZW5hYmxlLW1ldGhvZCA9ICJwc2NpIjsKPiAJCQlvcGVy
YXRpbmctcG9pbnRzLXYyID0gPCZjcHUwX29wcF90YWJsZT47Cj4gCQl9Owo+IEBAIC03NzQsNiAr
Nzc4LDczIEBAIHVhcnQ5OiBzZXJpYWxAZmU2ZDAwMDAgewo+IAkJc3RhdHVzID0gImRpc2FibGVk
IjsKPiAJfTsKPiAKPiArCXRoZXJtYWxfem9uZXM6IHRoZXJtYWwtem9uZXMgewo+ICsJCWNwdV90
aGVybWFsOiBjcHUtdGhlcm1hbCB7Cj4gKwkJCXBvbGxpbmctZGVsYXktcGFzc2l2ZSA9IDwxMDA+
Owo+ICsJCQlwb2xsaW5nLWRlbGF5ID0gPDEwMDA+Owo+ICsKPiArCQkJdGhlcm1hbC1zZW5zb3Jz
ID0gPCZ0c2FkYyAwPjsKPiArCj4gKwkJCXRyaXBzIHsKPiArCQkJCWNwdV9hbGVydDA6IGNwdV9h
bGVydDAgewo+ICsJCQkJCXRlbXBlcmF0dXJlID0gPDcwMDAwPjsKPiArCQkJCQloeXN0ZXJlc2lz
ID0gPDIwMDA+Owo+ICsJCQkJCXR5cGUgPSAicGFzc2l2ZSI7Cj4gKwkJCQl9Owo+ICsJCQkJY3B1
X2FsZXJ0MTogY3B1X2FsZXJ0MSB7Cj4gKwkJCQkJdGVtcGVyYXR1cmUgPSA8NzUwMDA+Owo+ICsJ
CQkJCWh5c3RlcmVzaXMgPSA8MjAwMD47Cj4gKwkJCQkJdHlwZSA9ICJwYXNzaXZlIjsKPiArCQkJ
CX07Cj4gKwkJCQljcHVfY3JpdDogY3B1X2NyaXQgewo+ICsJCQkJCXRlbXBlcmF0dXJlID0gPDk1
MDAwPjsKPiArCQkJCQloeXN0ZXJlc2lzID0gPDIwMDA+Owo+ICsJCQkJCXR5cGUgPSAiY3JpdGlj
YWwiOwo+ICsJCQkJfTsKPiArCQkJfTsKPiArCj4gKwkJCWNvb2xpbmctbWFwcyB7Cj4gKwkJCQlt
YXAwIHsKPiArCQkJCQl0cmlwID0gPCZjcHVfYWxlcnQwPjsKPiArCQkJCQljb29saW5nLWRldmlj
ZSA9Cj4gKwkJCQkJCTwmY3B1MCBUSEVSTUFMX05PX0xJTUlUIFRIRVJNQUxfTk9fTElNSVQ+LAo+
ICsJCQkJCQk8JmNwdTEgVEhFUk1BTF9OT19MSU1JVCBUSEVSTUFMX05PX0xJTUlUPiwKPiArCQkJ
CQkJPCZjcHUyIFRIRVJNQUxfTk9fTElNSVQgVEhFUk1BTF9OT19MSU1JVD4sCj4gKwkJCQkJCTwm
Y3B1MyBUSEVSTUFMX05PX0xJTUlUIFRIRVJNQUxfTk9fTElNSVQ+Owo+ICsJCQkJfTsKPiArCQkJ
fTsKPiArCQl9Owo+ICsKPiArCQlncHVfdGhlcm1hbDogZ3B1LXRoZXJtYWwgewo+ICsJCQlwb2xs
aW5nLWRlbGF5LXBhc3NpdmUgPSA8MjA+OyAvKiBtaWxsaXNlY29uZHMgKi8KPiArCQkJcG9sbGlu
Zy1kZWxheSA9IDwxMDAwPjsgLyogbWlsbGlzZWNvbmRzICovCj4gKwo+ICsJCQl0aGVybWFsLXNl
bnNvcnMgPSA8JnRzYWRjIDE+Owo+ICsJCX07Cj4gKwl9Owo+ICsKPiArCXRzYWRjOiB0c2FkY0Bm
ZTcxMDAwMCB7Cj4gKwkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1NjgtdHNhZGMiOwo+ICsJ
CXJlZyA9IDwweDAgMHhmZTcxMDAwMCAweDAgMHgxMDA+Owo+ICsJCWludGVycnVwdHMgPSA8R0lD
X1NQSSAxMTUgSVJRX1RZUEVfTEVWRUxfSElHSD47Cj4gKwkJYXNzaWduZWQtY2xvY2tzID0gPCZj
cnUgQ0xLX1RTQURDX1RTRU4+LCA8JmNydSBDTEtfVFNBREM+Owo+ICsJCWFzc2lnbmVkLWNsb2Nr
LXJhdGVzID0gPDE3MDAwMDAwPiwgPDcwMDAwMD47Cj4gKwkJY2xvY2tzID0gPCZjcnUgQ0xLX1RT
QURDPiwgPCZjcnUgUENMS19UU0FEQz47Cj4gKwkJY2xvY2stbmFtZXMgPSAidHNhZGMiLCAiYXBi
X3BjbGsiOwo+ICsJCXJlc2V0cyA9IDwmY3J1IFNSU1RfVFNBREM+LCA8JmNydSBTUlNUX1BfVFNB
REM+LAo+ICsJCQkgPCZjcnUgU1JTVF9UU0FEQ1BIWT47Cj4gKwkJcmVzZXQtbmFtZXMgPSAidHNh
ZGMiLCAidHNhZGMtYXBiIiwgInRzYWRjLXBoeSI7Cj4gKwkJcm9ja2NoaXAsZ3JmID0gPCZncmY+
Owo+ICsJCXJvY2tjaGlwLGh3LXRzaHV0LXRlbXAgPSA8OTUwMDA+Owo+ICsJCXJvY2tjaGlwLGh3
LXRzaHV0LW1vZGUgPSA8MT47IC8qIHRzaHV0IG1vZGUgMDpDUlUgMTpHUElPICovCj4gKwkJcm9j
a2NoaXAsaHctdHNodXQtcG9sYXJpdHkgPSA8MD47IC8qIHRzaHV0IHBvbGFyaXR5IDA6TE9XIDE6
SElHSCAqLwo+ICsJCXBpbmN0cmwtbmFtZXMgPSAiZ3BpbyIsICJvdHBvdXQiOwo+ICsJCXBpbmN0
cmwtMCA9IDwmdHNhZGNfZ3Bpbz47Cj4gKwkJcGluY3RybC0xID0gPCZ0c2FkY19zaHV0b3JnPjsK
PiArCQkjdGhlcm1hbC1zZW5zb3ItY2VsbHMgPSA8MT47Cj4gKwkJc3RhdHVzID0gImRpc2FibGVk
IjsKPiArCX07Cj4gKwo+IAlzYXJhZGM6IHNhcmFkY0BmZTcyMDAwMCB7Cj4gCQljb21wYXRpYmxl
ID0gInJvY2tjaGlwLHJrMzU2OC1zYXJhZGMiLCAicm9ja2NoaXAscmszMzk5LXNhcmFkYyI7Cj4g
CQlyZWcgPSA8MHgwIDB4ZmU3MjAwMDAgMHgwIDB4MTAwPjsKPiAtLSAKPiAyLjI1LjEKPiAKPiAK
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IExpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+IExpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCgpQZXRlciwKCkknbSB0cnlpbmcgdG8gdXNlIHRoaXMgc2VyaWVzIHRvIGdldCB0aGVy
bWFsIG9uIHJrMzU2NiBiYXNlZCB0dmJveCAoeDk2LXg2KS4KRHJpdmVyIGxvYWRzIGJ1dCBpJ20g
Z2V0dGluZyBmb2xsb3dpbmcgZXJyb3I6CgpbICAxMzIuODczOTc5XSByb2NrY2hpcC10aGVybWFs
IGZlNzEwMDAwLnRzYWRjOiBmYWlsZWQgdG8gcmVnaXN0ZXIgc2Vuc29yIDA6IC01MTcKWyAgMTMy
Ljg3NDY1MF0gcm9ja2NoaXAtdGhlcm1hbCBmZTcxMDAwMC50c2FkYzogZmFpbGVkIHRvIHJlZ2lz
dGVyIHNlbnNvclswXSA6IGVycm9yID0gLTUxNwoKTWF5YmUgeW91IGhhdmUgc29tZSBoaW50cyBo
ZXJlPwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
