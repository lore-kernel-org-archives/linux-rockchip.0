Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89A7ACCF9E5
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Oct 2025 22:31:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6r191DcauFBGeKKUOLFEhxBZLbabRXB8R/t8pxrZJsY=; b=jlmoRJT5nCYwZD
	2IWwFqyBcSeeqdtuq0I2saUxXMYPfQazTwuinqa31TZKsgfxg7NfsK8Q5nywVXYwAjPj2nJyaHyMz
	RqOCXxX+0NTg03wJ4cX1z5gL/VXe0m4hHwsLJB8vexIQKqs/JFMXt42Dhtqaf56bTKMe20LS/eOFW
	eAiK3y0w9im9S2SMAiiDmRk1d9j7gVQtDtTxAoTC6PgUCs6iv3HbGh1P4ZevbXEpFnAVccrVSfN6u
	YhrR9hXU/32qHR/99oMviu8jvCVuMLg2tbMT351WUgYejwOz+WotG/F2OR0R75X4i78Y3lpiABiqB
	5FaDQeHZh3AOc4JHvAMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDVkZ-0000000EsRj-1aHX;
	Mon, 27 Oct 2025 22:31:39 +0000
Received: from smtpbgbr2.qq.com ([54.207.22.56])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDVkV-0000000EsPw-3HRt
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Oct 2025 22:31:37 +0000
X-QQ-mid: zesmtpip3t1761604254ta1cf0039
X-QQ-Originating-IP: qeEvK7am4rcn+2zKvIw6l7pKdUIEQtur2S5YS1iAGmo=
Received: from [IPV6:240f:10b:7440:1:27fe:5767 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 28 Oct 2025 06:30:50 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 4733601881892471049
Message-ID: <6B986FE9E161F74F+f2826946-a3e9-4618-b5c8-6e29f9f6b83c@radxa.com>
Date: Tue, 28 Oct 2025 07:30:49 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] dt-bindings: arm: rockchip: Reorder the Radxa board
 entries
To: Krzysztof Kozlowski <krzk@kernel.org>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 jonas@kwiboo.se, dsimic@manjaro.org, amadeus@jmu.edu.cn,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251027122641.39396-1-naoki@radxa.com>
 <20251027122641.39396-5-naoki@radxa.com>
 <67e7badd-4b38-4f93-872b-e51a43281d3b@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <67e7badd-4b38-4f93-872b-e51a43281d3b@kernel.org>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: NkLA2q2LD229CtcVGeMGeTD4zCx6cEhayrlDIZ+nfug4CAMaHq2VzH7+
	8vbzXOgrHUHyQC1kAtSH+St5RYN2ogh5HaNbjBtMPXfJu8zcpRpVqNgiskaw6WZxoQOkMvf
	tki0dktt5xvYTFcCB25k5Is/y2mCwXaskcmLq3N7E01rWXw5n1PEvmioWSZoAv+d2eelPtu
	QFD7CdJTfEdcZE/pzvdunrz+u/mzEmynVIfRzdOvARfyXVlgxob3GvUa/Z0krMhZNczlYzZ
	TlmrcYMiLEjB/Xs1ylpK3C4KAKCMvIPTKSIu/oMUmJ60lSYHOLrTkN5mV1mle0+aQoRJ9U/
	VTc5YVBIbANyMMvOrMwxmdDrG0xXyQ2MStHvllMYs0LymJKs2YrkpyUPlO4xo+EYv2PvS+F
	hjPGSPpnqkXdaKQvBcts6s7ilRtcwOrmud+JLT5eH5zWBQaRHreKM+owV3+k/ElUe+oJKWb
	YlE77+M3qhe+CZF12qEROJAgsBySqFWZtewZFhMatUItVqWRdeeJT5cbIVj4bR815qAH7VM
	DbcYdIhWcKPSxH/RrNfp953iROdc+Jxl1KiMUbU1+XBYyXkZsfEhAW0uVUY5s9kHdD3Kt8k
	4AtYz1+5vVFdCSQXWRHqjJPZAIz2C57KhSmDcWzR9SAeVKD+gJNAIg10UK8Wp9meC+z9m6O
	PFp4MotkfDpa42P9uA/7z1IEQtGrHvKydoldkhtsjrKea3mXcLn1vcBjHUYqyMBpXr929nS
	tEj3wmSU5Rror03HJ/Geha4siCh6GD3PImYj6XvCHbyZl5YdpTn3IU5UFf1U4xHj4j+X73t
	Nx7+pjwP+UQ+dqQFxQA1RcTanopBAtBE+EePBu4OaVdn6OGfa3DstyRo3r7pjd2qCVoMGhz
	EvYsRAvKWE16XcVgc47WKEmt/DKoo2LZYDndpJkP5CJjTJWcZR2vs7rltJEE2aTbIbw3v4o
	qfwgWDVRvX/Bv0HlLnIhZYTNkWSIHh2p+Ew4=
X-QQ-XMRINFO: MPJ6Tf5t3I/ycC2BItcBVIA=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_153136_648075_CA1F2344 
X-CRM114-Status: UNSURE (   7.94  )
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

Hi Krzysztof,

On 10/28/25 04:08, Krzysztof Kozlowski wrote:
> On 27/10/2025 13:26, FUKAUMI Naoki wrote:
>> Reorder the Radxa board entries alphanumerically, with the following
>> exceptions:
> 
> 
> Why? You must explain that in the commit. What sorting is being used by
> this file? Why do you think your re-order matches that sorting rule?

I understand there is no rule, only your preference. Thanks.

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
