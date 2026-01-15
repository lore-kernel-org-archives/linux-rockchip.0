Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C778D3CC9E
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jan 2026 01:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CFVDTIg+mefpPJY9Nu4sM4IiZjCWZRoWNUSn+shGWos=; b=KHuE6QTJGEwNzj
	UGLhowGNtCJ/mBiTXYjS/cmzdz/eNwETe+XZuMmI3uBsnxwPPqGw9l1AHe01CMzq69HeUlYrZEilp
	RzwXP/eaBNCZlPABBrKRwpZadlxxQRalImHbSwwsEy1Fu5GlDZgOuPlkLmPjpp1BAEMPQYh2uocWx
	Rkv2xEPj0Hk4QrrZ5pPJSD0PrI8ybPbTnbbv4nZlwll6kwRvPqt6JRnbrzJC6aTI9ha6j37B2F4p0
	KL3ynFrfHDiNp2QiJ2P7eS034NHWs5jerCL1zE/3dmJtBGC8TYCQ7gMMpx8trYzAUL4lRk8Sc2XVB
	fUkFAUQeesn3kCkUiWdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgCMr-0000000BQsi-1wZm;
	Thu, 15 Jan 2026 01:41:45 +0000
Received: from pi.codeconstruct.com.au ([203.29.241.158] helo=codeconstruct.com.au)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgCMo-0000000BQrJ-0gvz;
	Thu, 15 Jan 2026 01:41:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1768441299;
	bh=YvL196Y8Jf6UpyplUKqHRSkjNlU+qv/HoPgPsGaW3/U=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=i9X1/Q4uIVX6nV7K73FQ4EyscmGIdjxu1kCH754NihRYkeb7dOwpfGrIDJ1OGo8Nu
	 olTR17Xtj1um35SV+M3fPOmZpV7qMGjPYxzNQmxIjMelob3kXWx6fdop7BCdE4FdJT
	 YTllNZy8ElszhgX+fwMlcXV9ihLywCpSZy5NDQEKiwwzS+sl+H1A9Bh/muszYezeUp
	 3/qBPsAHAj1i1rVq9QOZ3AbKsBYHzBnqEuuobRpD3SaxLUZx/oIlU5MDa5I5FUU5X7
	 YaLzNnvSnX9MfCcVaeGL7AieKlSkWPSvoKav3xITpDeHyO4lU1UBw2qcBGbJdUrSKw
	 s1oG7FNxfJo9Q==
Received: from [192.168.68.115] (unknown [180.150.112.60])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id D96D16472A;
	Thu, 15 Jan 2026 09:41:35 +0800 (AWST)
Message-ID: <88ad862c8d68853eddfd17c7588cad65b3e104f9.camel@codeconstruct.com.au>
Subject: Re: [PATCH 01/11] pinctrl: aspeed: Cleanup header includes
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, Linus
 Walleij	 <linusw@kernel.org>, Joel Stanley <joel@jms.id.au>, Emil Renner
 Berthing	 <kernel@esmil.dk>, Hal Feng <hal.feng@starfivetech.com>, Chen
 Wang	 <unicorn_wang@outlook.com>, Inochi Amaoto <inochiama@gmail.com>,
 Basavaraj Natikar <Basavaraj.Natikar@amd.com>, Shyam Sundar S K
 <Shyam-sundar.S-k@amd.com>, Bartosz Golaszewski <brgl@kernel.org>, Steen
 Hegelund <Steen.Hegelund@microchip.com>, Daniel Machon	
 <daniel.machon@microchip.com>, UNGLinuxDriver@microchip.com, Thierry Reding
	 <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, Heiko
 Stuebner <heiko@sntech.de>, Patrice Chotard <patrice.chotard@foss.st.com>
Cc: linux-aspeed@lists.ozlabs.org, openbmc@lists.ozlabs.org, 
	linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, sophgo@lists.linux.dev, 
	linux-tegra@vger.kernel.org, linux-rockchip@lists.infradead.org
Date: Thu, 15 Jan 2026 12:11:35 +1030
In-Reply-To: <20260114-pinctrl-cleanup-guard-v1-1-a14572685cd3@oss.qualcomm.com>
References: <20260114-pinctrl-cleanup-guard-v1-0-a14572685cd3@oss.qualcomm.com>
	 <20260114-pinctrl-cleanup-guard-v1-1-a14572685cd3@oss.qualcomm.com>
User-Agent: Evolution 3.56.2-0+deb13u1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_174142_400074_63B17ADE 
X-CRM114-Status: UNSURE (   6.28  )
X-CRM114-Notice: Please train this message.
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

T24gV2VkLCAyMDI2LTAxLTE0IGF0IDE2OjMwICswMTAwLCBLcnp5c3p0b2YgS296bG93c2tpIHdy
b3RlOgo+IFJlbW92ZSB1bnVzZWQgaW5jbHVkZXMgKG5vIG11dGV4ZXMsIHN0cmluZyBmdW5jdGlv
bnMsIG5vIE9GIGZ1bmN0aW9ucykKPiBhbmQgYnJpbmcgZGlyZWN0bHkgdXNlZCBtb2RfZGV2aWNl
dGFibGUuaCAocHJldmlvdXNseSBwdWxsZWQgdmlhIG9mLmgpLgo+IAo+IFNpZ25lZC1vZmYtYnk6
IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2lAb3NzLnF1YWxjb21tLmNv
bT4KPiAtLS0KPiDCoGRyaXZlcnMvcGluY3RybC9hc3BlZWQvcGluY3RybC1hc3BlZWQtZzQuYyB8
IDQgKy0tLQo+IMKgZHJpdmVycy9waW5jdHJsL2FzcGVlZC9waW5jdHJsLWFzcGVlZC1nNS5jIHwg
MyArLS0KPiDCoGRyaXZlcnMvcGluY3RybC9hc3BlZWQvcGluY3RybC1hc3BlZWQtZzYuYyB8IDUg
Ky0tLS0KPiDCoDMgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygt
KQoKUmV2aWV3ZWQtYnk6IEFuZHJldyBKZWZmZXJ5IDxhbmRyZXdAY29kZWNvbnN0cnVjdC5jb20u
YXU+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
