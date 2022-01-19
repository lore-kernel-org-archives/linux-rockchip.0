Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BF50C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jan 2022 10:58:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+JC3ljxgdz+hlN3htXLmGlUSJWC4pgjgjNn2nlFOWQM=; b=aVDClula2jHGH0
	aRHuYRC/8tw+EbwHwnJ1kyghoQVVySuJJk1ymqKy6TojQy9uqOK052cNpZubbiSTEsbSJrnFdFgGf
	k8eZTHvv83YZ9gw6MmSG0Am5V9LKt9uRy38qxmbnOOgE09hW3UrKMk34io3NjpykEoJYK/IPCCZXN
	O5ebckWcn+ZiOjwLMQ6zJQ5jblmIuqfeq+/oroEMv+D6uoTC0WoAR8OFfTVlwNlwM11vmobPGTT3v
	SzdIo+7BxZGPuFLnzJw3uodMjDxQDCNKBOx4lFJE1p1i5C5goS0cCPFnIRjEDj5nzrejUTovmnfeD
	nLF53K883+ErP3kpjOxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nA8f7-0052lw-OH; Wed, 19 Jan 2022 10:57:57 +0000
Received: from mx0a-001ae601.pphosted.com ([67.231.149.25]
 helo=mx0b-001ae601.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nA8et-0052ea-OZ; Wed, 19 Jan 2022 10:57:45 +0000
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
 by mx0a-001ae601.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id 20J5aNQc003098;
 Wed, 19 Jan 2022 04:57:27 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=PODMain02222019;
 bh=YeXjvt2a/3UPggig0LgeC8zG+kAXAN5PBZnu2EVj7xY=;
 b=LrPgXwdH8VKL3HwRWaA6o8fKipetDIcgkbBL5GAST84W3pDLptBnYV5kxG7+L+BbEBid
 C/Kjm8mA761mT3PTXrMT6e2sJhJhnYD244TOsdNmGn+NRzc8LW0N6W5mbj0Kp77ZK0vy
 eg+1iuwXVygQPud3lxG8lHsCtImFhokOD9Kz372YX4Y2m9Qkj24Nd34Dah9erEYj5Ppt
 tw9PMtj8Fdj9uEXqGIth5cdSwAYKw4vbuKmE2Fz9kuj3JEAcwzaTwdpX7Rh5UP5chgwo
 knQP6V666OzxQe8dcg4399G7genTjTRx6DRYBytS3Fi4tggXiLKofGKaTqQ6xyxhj3aM lQ== 
Received: from ediex02.ad.cirrus.com ([84.19.233.68])
 by mx0a-001ae601.pphosted.com (PPS) with ESMTPS id 3dnaxhtd5c-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Wed, 19 Jan 2022 04:57:27 -0600
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.18; Wed, 19 Jan
 2022 10:57:25 +0000
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.18 via
 Frontend Transport; Wed, 19 Jan 2022 10:57:25 +0000
Received: from ediswmail.ad.cirrus.com (ediswmail.ad.cirrus.com [198.61.86.93])
 by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 89617B0E;
 Wed, 19 Jan 2022 10:57:24 +0000 (UTC)
Date: Wed, 19 Jan 2022 10:57:24 +0000
From: Charles Keepax <ckeepax@opensource.cirrus.com>
To: Rob Herring <robh@kernel.org>
CC: Sandy Huang <hjc@rock-chips.com>, Heiko =?iso-8859-1?Q?St=FCbner?=
 <heiko@sntech.de>, David Airlie <airlied@linux.ie>, Daniel Vetter
 <daniel@ffwll.ch>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, Richard
 Fitzgerald <rf@opensource.cirrus.com>, Linus Walleij
 <linus.walleij@linaro.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski@canonical.com>, Sylwester Nawrocki
 <s.nawrocki@samsung.com>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown
 <broonie@kernel.org>, - <patches@opensource.cirrus.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <linux-input@vger.kernel.org>, <linux-gpio@vger.kernel.org>,
 <alsa-devel@alsa-project.org>
Subject: Re: [PATCH] dt-bindings: Drop unnecessary pinctrl properties
Message-ID: <20220119105724.GQ18506@ediswmail.ad.cirrus.com>
References: <20220119015325.2438277-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220119015325.2438277-1-robh@kernel.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Proofpoint-GUID: qX5Mw540ExmwrU_vS7Og4PEUG2Xrc84A
X-Proofpoint-ORIG-GUID: qX5Mw540ExmwrU_vS7Og4PEUG2Xrc84A
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220119_025743_888389_2BA4A1E3 
X-CRM114-Status: GOOD (  13.43  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Jan 18, 2022 at 07:53:25PM -0600, Rob Herring wrote:
> For a single pinctrl mode, it is not necessary to define pinctrl
> properties as the tools always allow pinctrl properties.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---

Acked-by: Charles Keepax <ckeepax@opensource.cirrus.com>

Thanks,
Charles

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
