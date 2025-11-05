Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1358ACCF9F8
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Nov 2025 06:57:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fGiKjyjPdvqRRJaRisylcBi6FJYUbTavPYPztzMujH8=; b=K/5fKyNxbOMAHg
	wGnM651O+zJIuH+Qa+mXDwPWqcqQvyEfbHNrBnI50dqOx8WN8o7bNJ6EhlJN8O6kCHtY+TvszQ/xi
	yXf7dGiTkFaCNf38v9GqXajn4BUu9Ss3mkMoCC8vvBieQKwlW9YdrE3nJZg6j5w6NQWDUZgSCFqLQ
	k3pcDlc4KfdZB1pT7LVh5lCuXMB3UkFV2pSEsFv4Zm+Eyea7GhYUHwkFxsQO0iCoelRRr442Lsqkq
	Jkoi061cD9kg+0OmlabcHADh3W8QjK+DxF2zUXqaONRx+jRVe82VS9EYP+C/SlDT/0dTqF7NVREFb
	fPezlOgS3obeubXDcEKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGXSm-0000000D6RR-2GqZ;
	Wed, 05 Nov 2025 06:57:48 +0000
Received: from smtpbgbr2.qq.com ([54.207.22.56])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGXSi-0000000D6Lq-3t90
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Nov 2025 06:57:47 +0000
X-QQ-mid: zesmtpip3t1762325833tde008904
X-QQ-Originating-IP: xq+306SU+Fe2VACtff6Epzu834VNa0vC95ixU4W+UpE=
Received: from [IPV6:240f:10b:7440:1:a426:813: ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 05 Nov 2025 14:57:08 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 7931151714921745533
Message-ID: <A6C1199E2A0D3F37+f3fe0fd5-4ca5-4d3d-bc1d-45f46b48f89b@radxa.com>
Date: Wed, 5 Nov 2025 15:57:08 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/3] dt-bindings: arm: rockchip: Add Radxa CM5 IO Board
To: Krzysztof Kozlowski <krzk@kernel.org>, heiko@sntech.de
Cc: joseph.kogut@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, jonas@kwiboo.se, kever.yang@rock-chips.com,
 i@next.chainsx.cn, honyuenkwun@gmail.com, quentin.schulz@cherry.de,
 dsimic@manjaro.org, pbrobinson@gmail.com, amadeus@jmu.edu.cn,
 jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20251105051335.17652-1-naoki@radxa.com>
 <20251105051335.17652-2-naoki@radxa.com>
 <ce6e6369-a7e4-4a35-80f8-70ef41c3b877@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <ce6e6369-a7e4-4a35-80f8-70ef41c3b877@kernel.org>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: Nwz8Cs33/LprLWOpfuuEsBnaPmczbKwyTK0e+XuaRuLRANT0mUqp5bqS
	Zw2SFtSiHFDewC/DEke12lHxngHMxtaYWaoVK5M9blb3nELfIL/alKlz1r+Bk2yB8iVJfWC
	Eu0/uWKwVhXr8u02Dej4MSgNuoNky2J4Eqk7pOjfDxmFAE9u7lQzp8CJ5aBUqRbAzlkY3Hs
	JzJma3BKIuK3+V1uTwZJqiPuAwFmUtCP0D+5W5MWfreMUniFI2XKUivtwSPV7aLqM096VuM
	ZVrML/Gx2GuovtCqJW0Ca1CDwc+RFoaFHiKpmckx7rcsP8d4A2VqNqauMwmBnKxLW53tBcZ
	Qxmrl+oy0ImnbgLdidyCdByRfen0TF0KtBtXWMf3hgM4JhgSutbbgLXumKuF5bDBGSfFI5r
	PSHqottJ6Es+oina2O+q3PY9zCeaUOcoWPtjULOS799mHNTArlKol0NMOYuVepXZHR9Xhbg
	sueCDia0ltXCRCFISdVz9gtXJ5Y0uIdEIuiQJ/2pKsRG3rqGn4MR2BnH/OZV6cmrptP0LO8
	Y1os2S+oTnQm7D4AAk8RBfWfyoHNIc1hGcsRZITPCb7S/4EkXhk9b3S1SkaKy1ufTLR3hj0
	h7H3n/KMIClw4I9sf35SRamRTS/PgvCF2qtPtmtVp0Y9oQ5cAq5v0deDtfdDp8GZv6Ei/gQ
	EbQlKsKF3zvztTw7niyAvm0yYuDedi/1NIxg/Ll6cveeEVa5dHGGqfzkQ4tABhX0FI7Rmer
	CQjKJ6/AfJat+lV7Qx/DMU85FnsFir4oCohJJI6J2FFp8YXQUIP1Pa8B7SpneQ+NZTIKClV
	S26lf6ksYLoOC8gH7nR4mARaZdN2hL9GBRYHEnACjOR9dL3HXbMz6ywhEgkyTuLxuQkpDq6
	VtM5BivevtuJMzNOpNsGi055WwLy+FfCtCeMBma6phh/ubmDlxHZlyo574rFpKQlmAc9Z5+
	biFhgb8dLFhd6fg27ZsdH7QAN3iVg+tObGZ241L+tQzobvbdWoQwHsRIiAjGvIe4mf5g=
X-QQ-XMRINFO: OD9hHCdaPRBwq3WW+NvGbIU=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251104_225745_847294_721E34E9 
X-CRM114-Status: UNSURE (   7.37  )
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

On 11/5/25 15:43, Krzysztof Kozlowski wrote:
> On 05/11/2025 06:13, FUKAUMI Naoki wrote:
>> Add device tree binding documentation for the Radxa CM5 IO Board.
>>
>> Link: https://dl.radxa.com/cm5/radxa_cm5_product_brief.pdf
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
> 
> Wrong DCO chain.
> 
>> ---
>>   Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
> 
> NAK, you just stolen ownership of an already posted patch.

Read "Changes in v6" and patches; my patches are not the same as v5.
Your reply is totally inappropriate.

> Best regards,
> Krzysztof
> 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
