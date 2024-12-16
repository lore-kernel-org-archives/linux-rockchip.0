Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51D36E77180
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Dec 2024 13:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iH1IJeyAuPCAFjX7/HxRXqCfVcAKXKEx/QOPLSVTdLo=; b=SMy2asOfKd1+7T
	yO3NqyfNrkh5NS85mXeU5HkYjVLcRVAAI6ccyKeeswT0z0i1Ds5rpyzyztLW3cY9eKfgp3RrnG+AQ
	hmpLquTYBMy0gkn5dcALO0TzbWthDMA7P1l7KiLNzndfy1Cv4lcWsO12k34oIQf3McFU5UQyfl/wJ
	TfnVSxzFHlcrFYDzKe4lA77O+s3KgqAVSybCWPuBK580lm08eBXdb3EroZvu7v5xDefMql/8WuDmi
	jxLLc+0o7jBNL8mqSl5EcGG3vWM0bD0eqX2elMsjFJND0+oPpVT8c1v5FfjTgijr2oLkOxLLSXBzl
	E24P3KLgTuHFonLMa87Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNBTG-0000000A8yK-0k9u;
	Mon, 16 Dec 2024 13:49:14 +0000
Received: from smtpbgsg1.qq.com ([54.254.200.92])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNBTC-0000000A8ws-0du3
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Dec 2024 13:49:12 +0000
X-QQ-mid: bizesmtpip4t1734356916t3049ip
X-QQ-Originating-IP: rryKMwZok+QwQSoI7na6RTagmbs0tAuNzaSxdwi9+EY=
Received: from [IPV6:240f:10b:7440:1:f7da:fd82 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 16 Dec 2024 21:48:30 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 14767455672543644934
Message-ID: <5707EE9715A7E332+f33721f1-8b50-4262-bdaa-468ad2c79ecc@radxa.com>
Date: Mon, 16 Dec 2024 22:48:28 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 02/12] arm64: dts: rockchip: Change node name for
 pwm-fan for Radxa ROCK 5C
To: Krzysztof Kozlowski <krzk@kernel.org>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 dsimic@manjaro.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20241216113052.15696-1-naoki@radxa.com>
 <20241216113052.15696-3-naoki@radxa.com>
 <0b0efc1d-2340-4ec5-a46e-62a6cebbc2b6@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
Organization: Radxa Computer (Shenzhen) Co., Ltd.
In-Reply-To: <0b0efc1d-2340-4ec5-a46e-62a6cebbc2b6@kernel.org>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: N6euzTYZA5gvRMB+LuyAfQrH/UOmDQpnqTvUjlna1cjdxBmrlzxT4+Ud
	tqifDkr7Han25LWfBAesOx/9KNErmZ9QBbVI0qH9QrvuNQUprA7v56SlrSELK6cTZIM7IjY
	lvbIiW5lAKcwasvAIt/sbwid5y2++VFzblQhHpZNJ2SrZAojy9w/ZtGQlJw21NytFrKSaWm
	PHp+vhHqEVEL7SJCK3sOjgUWMkCIbnt03oxU3ljF8SzvuuADmpXW4xnBt/tmwa4+0LZ7Lcb
	iUCHht5w3azrU4sERiwnTOfWOfv8GS05DswsX8qiIPUizjUI1BfjuyF20xpWWL51tWENuK5
	bIWmoJkXSnjr1vThe/bivDaDT+0u15+Plkclp4q3SaIfGATZLGEwNuK5KyKVorvlXhx2Ejl
	cuw8BAmt1FcRgjnPtu7+ZVcZbr5hseQKpKusjIvWHyAj7vdfcQYMGI2EJT5diPOSIUCiif6
	kf63jyIgNuBbYdbaKzRFBcBpoZ0VFFpxLJwHktXYuwYhkzqdufx+xy33T6mqbMbZjmW40eC
	LA6w386GZ4152XXA8qx8RE6nNdkQ7VaVLCZ177mhJPY37bi1Xyzvw+rrfZYp5/q68L4omUy
	Bcx7NKnU4ITAARr0rPgwerLjeuV1mBLxKO3lwLZs3IjpqpgMo13V057nlpO/ALaAdrz+zCu
	KRgPzuZjCXLe0NQEgOWOgOrB7tyeuivuc/b6sqQIG+m8b+zsm35hh4sAmKeEEbMeYQjCpcR
	pA9iyYpLcLapVmL82ppc0aP+oY8ib/E/B/+3Z6W8ehRn9Qmp/xToIuQHv1dj04MpqHAbEFn
	9dH8v+AUFVpTObUlX10+EprMVbNHfIr29i0uAWNFusyt6gnXoE/xkdttD4MTet8iMeHELHv
	sxx98d+9gSZyn9V6ZlmMHP6EutlqkVJ/9GHuWomhDOnKhvMHWjqT7WrQuJSGOW1geu58RF/
	sU9Bp8Xf4ZCTtFlxAvMyaYXGvtcRi5hpKbtFwQodzXdIDBw==
X-QQ-XMRINFO: Mp0Kj//9VHAxr69bL5MkOOs=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_054910_582104_AE28A4D2 
X-CRM114-Status: UNSURE (   3.89  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 12/16/24 22:37, Krzysztof Kozlowski wrote:
> On 16/12/2024 12:30, FUKAUMI Naoki wrote:
>> Use more common name "pwm-fan" for pwm-fan node. No functinal change.
> 
> No, generic name is fan.

  https://lore.kernel.org/all/71aa84af7a030e66487076e0976c8cad@manjaro.org/

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Best regards,
> Krzysztof
> 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
