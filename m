Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFDF4C43458
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Jul 2026 16:32:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Message-ID:Date:
	Mime-Version:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K30qmj5d/1COBbsMDCC2ruqO/8ZSQuH3lSgj6N/dngA=; b=DrkQI8rdSAs+SR
	SCZyQ9kD2tOdiJ6ate8ls7WuVOb+uhUeZymcnDWX2kfLEcbktsIVnLh/VzDrrJ1FRSMY2vz5SeQUK
	X3BUYHV2W4sFv3rhF/MlJ3lxt2loRmWnY9f9nk1WbgA7I2rhqClRVGfvu5r69jwQEjJILZBqMzLNX
	0hWkCDDPnQERVUJJKeZv2qjt49kiUs0q+0XRgiohgGYZKJz6uo+ErgZPmD31K0kCVFSz+VXbOs2uv
	644qhFvwv5uKdnljTDHi1kusqekfYC36fEvEczyIcBzVnvprQ8ScbAcMpCUzouNOaFzaNefdrWsRB
	HRDSuzaY5X7V9RXCpFaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfKL9-000000051CU-2jUS;
	Thu, 02 Jul 2026 16:32:39 +0000
Received: from out162-62-58-216.mail.qq.com ([162.62.58.216])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfKL5-000000051BA-2eDH;
	Thu, 02 Jul 2026 16:32:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1783009949; bh=OnW870l0yC9mr/LlBv2UdLFBV+iCbhzmV8aj4QwT7js=;
	h=From:To:Cc:Subject:Date:References:In-Reply-To;
	b=QU0osGOyGI/BXIufuCqgEKLUvS13kiSG1XC/OC14urB7LTIPReyVlR760ZG/2Wy7k
	 CozVNZw/3xXIzg4dXANourDVd0ebKApkV2P0uokrASkzkKIybKjOOLEcHEYjq9qx0r
	 1gq5unV8ilAv9KsYXBoQpzZAi1wsHpun5mkxIFZE=
X-QQ-XMRINFO: NS+P29fieYNwqS3WCnRCOn9D1NpZuCnCRA==
X-QQ-XMAILINFO: McF9JvsryK5J2MbxooxpFinMQvrcWw5im6o2Q6S6gW5u3vK+e7cbb8hasHzSKI
	 bcHTBt+6j2qlIdyMSYAtV4T4FkElEeOkhPgUjutEqxSZlE9pwpXcmYwVL07UwlPWfKyDB/k7yJPCd
	 O/FwzzTIDfS6OMkFEs9WAYsIQIOWNO+byR197KMqoN69geEX3QNLF4uCZeS9sssoBvgUbE7eHtJ73
	 uLxAtB59HYqah38S61HXgi7+ecvVPE2eAoocyRHDXxtREgZE4n9kB0+cKPWhgzNQ+RcWfexXszztR
	 KKTxN+RDMYhH2tZox94LMxZO0QxJbV5OWgEt4ZPNBgosE6wmjyU/kWY/ynBS9NjV4CrEGBhpP8pgE
	 kKrx5xDLW7Ylf7x0n03qpySTyuk/y0P5ENgh4lsbd6nCPP2SjYirm2UbNATs1ARVThiRQAHR7xeCH
	 RjHXuoZE4ISLTI5Hnyca1FBFBMtv+PU1e+c/xx10pOFi/TwkxfRYWjFHw50+m0Okder38GSiOXR1F
	 NQn9PFhTcEYqsMInYAQKW6uXJqoaqRpX0Li+7TJ9wk4jjsiOMq5Z7AApJpHGDojBEsJt7QXt74oS/
	 BveXTjV0ZYpWevj3fD4aDytAo018wnoFb86DPsGuqMP2/bcOtManjx+CPn20yxVDKYJh3s+HrgNiA
	 XG9+uNODenrAhEugrR4mfA7ABssjjmXFuMCrO4RILgfAhB1ODwR5n9ZyAJK2AY+egS64dNI/yBh35
	 dWDV/jSUyjbuGIj7bWQsbElPpuRt3+IsuVqI/yeyc2TPQBlIx2msP+v0VbJ76S8MUsWMCakJIAh3/
	 E/ae8K8VWzdLV9aTnQbFO9FZC+kCGg3TrgUdiIeMs6ZTDxVMNskXs0B0FRJzhkYWMO29QCZyU9B1Z
	 bZL4rWB///fCE/W1WnSv9GkSXF0IJaInY+mpYt2RpXvX3E5R7vbjg4jDjvJjCGiaxvjx3rJUSXJin
	 U8zbkaK2CTClnmuU97UpOUqyzo4h+otk3jvZMDkV6x7EOylkMw1ZhITE52UobaUR1DcJqfl/BRLS3
	 hqOio78a22z1UZ2t25FSQnHF27mNnp4CrZgQK4EAhmPoLjDt9DfTyU0c6vQ==
From: "=?utf-8?B?Q3VuaGFvIEx1?=" <1579567540@qq.com>
To: "=?utf-8?B?SGVpa28gU3TDvGJuZXI=?=" <heiko@sntech.de>, "=?utf-8?B?TWFyYyBLbGVpbmUtQnVkZGU=?=" <mkl@pengutronix.de>, "=?utf-8?B?bGludXgtY2Fu?=" <linux-can@vger.kernel.org>
Cc: "=?utf-8?B?VmluY2VudCBNYWlsaG9s?=" <mailhol@kernel.org>, "=?utf-8?B?Um9iIEhlcnJpbmc=?=" <robh@kernel.org>, "=?utf-8?B?S3J6eXN6dG9mIEtvemxvd3NraQ==?=" <krzk+dt@kernel.org>, "=?utf-8?B?a2VybmVs?=" <kernel@pengutronix.de>, "=?utf-8?B?Q29ub3IgRG9vbGV5?=" <conor+dt@kernel.org>, "=?utf-8?B?RG1pdHJ5IFRvcm9raG92?=" <dmitry.torokhov@gmail.com>, "=?utf-8?B?U2hlbmdqaXUgV2FuZw==?=" <shengjiu.wang@nxp.com>, "=?utf-8?B?UGVuZ3BlbmcgSG91?=" <pengpeng@iscas.ac.cn>, "=?utf-8?B?UnVzc2VsbCBLaW5n?=" <rmk+kernel@armlinux.org.uk>, "=?utf-8?B?RXJpYyBCaWdnZXJz?=" <ebiggers@kernel.org>, "=?utf-8?B?TWFyaW8gTGltb25jaWVsbG8=?=" <mario.limonciello@amd.com>, "=?utf-8?B?S2FybCBNZWhsdHJldHRlcg==?=" <kmehltretter@gmail.com>, "=?utf-8?B?WWl4dW4gTGFu?=" <dlan@kernel.org>, "=?utf-8?B?U3RlcGhlbiBCb3lk?=" <sboyd@kernel.org>, 
	"=?utf-8?B?ZGV2aWNldHJlZQ==?=" <devicetree@vger.kernel.org>, "=?utf-8?B?bGludXgtYXJtLWtlcm5lbA==?=" <linux-arm-kernel@lists.infradead.org>, "=?utf-8?B?bGludXgtcm9ja2NoaXA=?=" <linux-rockchip@lists.infradead.org>, "=?utf-8?B?bGludXgta2VybmVs?=" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 1/4] dt-bindings: can: rockchip: add rk3588 CAN-FD compatible
Mime-Version: 1.0
Date: Fri, 3 Jul 2026 00:32:26 +0800
X-Priority: 3
Message-ID: <tencent_E65CC81827F48E7C0708213AFA3934F9D00A@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
References: <20260702140654.2961561-1-1579567540@qq.com>
 <tencent_3B2B6003D1DE4FB7A984665A062581766405@qq.com>
	<2459655.BjyWNHgNrj@diego>
In-Reply-To: <2459655.BjyWNHgNrj@diego>
X-QQ-mid: xmsezb41-0t1783009946tqms5g9r6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_093237_413550_9B7B3DE3 
X-CRM114-Status: UNSURE (   8.36  )
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

PiBhZnRlcsKgZml4aW5nwqDCoEtyenlzenRvZidzwqBjb21tZW50Ogo+IFJldmlld2VkLWJ5OsKg
SGVpa2/CoFN0dWVibmVywqA8aGVpa29Ac250ZWNoLmRlPgo+Cj4gYW5kwqBkb2luZ8KgZHRic2No
ZWNrwqBvZsKgdGhlwqBiaW5kaW5nwqBhZ2FpbnN0wqB0aGXCoGR0LXBhdGNoZXM6Cj4gVGVzdGVk
LWJ5OsKgSGVpa2/CoFN0dWVibmVywqA8aGVpa29Ac250ZWNoLmRlPgoKSGkgSGVpa28sCgpUaGFu
a3MgZm9yIHRoZSByZXZpZXcgYW5kIHRlc3RpbmcuCgpJIHdpbGwgYWRkIHlvdXIgUmV2aWV3ZWQt
YnkgYW5kIFRlc3RlZC1ieSB0YWdzIGluIHYzLgoKQmVzdCByZWdhcmRzLApDdW5oYW8KCgoKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
