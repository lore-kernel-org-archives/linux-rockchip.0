Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BB47C6FD1F
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Mar 2023 11:53:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1RazBo4W7H5kxgFH1bEGnDC0hd8WYLimRBOonE7LxCk=; b=hRSdVkjf3r0PGe
	fw+sIjPGjL14nmYps+o3W9Sqxp9USIegC7jK1Mq0FpX2pSpq0of2Z2zN0h2JQ5XRZfgxVE0MVYzCR
	AZ3RBooieqe8XgsgIt+eUqUnHvT8cQqZixI/vlKwou1mupjjTtfEckSVX2ugDmWNxr+QLZLtVlTIc
	qg5gOcrvfOCJlWvd391GK9if/kjvGXGPNJCR0sXcEpx8pOtH+rXf+iLXWt03eorVS8k7yuwbxp2ml
	9EgPxL6tJdz07m5b2t4zFkwj19UBfpbNzoHzERVCbEVFGqzesZD7mqnnWw3m2wbFmAoPloUFhrCG6
	reJ9dIFSRXAwV/CBiRNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pg2SP-006dlM-3B;
	Sat, 25 Mar 2023 11:53:13 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pg2SN-006dk7-0B;
	Sat, 25 Mar 2023 11:53:12 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id EA5ECB801B9;
	Sat, 25 Mar 2023 11:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13F31C433EF;
	Sat, 25 Mar 2023 11:53:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679745185;
	bh=FFBB5Qbytv/2GhipRMImzTvlxCw1uCSobBjuA0Yniqs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=iaCm8xHG0OLKDna6iEpAcJOZQ5gAYYo2lIHjr0T9zFwpCN+15+sEBDcSsvwSGlGil
	 JKiQkOeBmRCCGdwyJTQJa1mbowpZrlm+6vdXUK8z/T2e2MqXvy/DuMEMweYsblZBjF
	 UGGXTzK1GK/J5z5WYGXaWmPVUnnTy6GObPfZJKsy89R4A5xxke+Xyfd5zHZbTY9Co5
	 Lzil0pPwVlwRyUcRFNRH28WtLcbIZLtpjflrntxjogojeUuqlwpWCnPfjSEFaBCCGI
	 xOM2QvZ6KaTBgMmBqpMkFZqlT6+jHJ+IhMeXxndYGoa4ivUC3gNPDj0dkP7OTTYp0R
	 0UGlzHMz3N56A==
Message-ID: <c6390182-8624-35c9-746b-f76e4987777c@kernel.org>
Date: Sat, 25 Mar 2023 12:52:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 3/4] dt-bindings: Add doc for Xunlong OrangePi R1 Plus
 LTS
Content-Language: en-US
To: Tianling Shen <cnsztl@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>,
 Andy Yan <andyshrk@163.com>, Peter Geis <pgwipeout@gmail.com>,
 Brian Norris <briannorris@chromium.org>,
 Chris Morgan <macromorgan@hotmail.com>, Andrew Lunn <andrew@lunn.ch>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Maya Matuszczyk <maccraft123mc@gmail.com>,
 Vincent Legoll <vincent.legoll@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230325074022.9818-1-cnsztl@gmail.com>
 <20230325074022.9818-4-cnsztl@gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20230325074022.9818-4-cnsztl@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230325_045311_240753_3F2FDC45 
X-CRM114-Status: UNSURE (   9.15  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 25/03/2023 08:40, Tianling Shen wrote:
> Add devicetree binding documentation for the
> Xunlong OrangePi R1 Plus LTS.


Acked-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
