Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6C3DC2BA18
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jun 2024 08:02:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NKxPyjvAaLbMlY1LX4WlUg4AMT9/4jHDEDDUbnWGqps=; b=TmeaDiVfb5gh8d
	+1ibIPRh2+0R68BfRLrHPtkdSRB96MwkYKRfsjxvB3BWkrJwdaxA8D+fIu0v8RzE7giIDb6FX3hDd
	RZwvP1rqOjMk8/8mgkzujkCGQJ77Zx5ym8Ypjsm6PQ5OiNbfkV2x9I+uRaouQEz49Td8/LXa219nW
	JrKcniULsYxn3afvkMFLImn9WTTCPaIP3KHaHWr3Tved6RXSXQn8az8YN/0y+13XyhJHHV+6WyAJ6
	I3dTZrsTmnNe6hh/DNziFWEjLp6/PfbDWL5/MEhIUVmFHF/GQJIDKODx//qwC1QsStTPI1LxzpcAh
	gcrnm7yRzQP95PKM+o5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLIAo-0000000DZzn-3o9N;
	Sun, 23 Jun 2024 08:02:06 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLIAi-0000000DZwI-0pkF;
	Sun, 23 Jun 2024 08:02:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1719129714; bh=hy2ki87r3CsdFd2uUj+s2wvNocOXNjMZAbPN3I53JH0=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=Kuc4qm+RLkfMTLfmABd/NF5FdG4goJqKSizgr8Rh95Nv+/dZdA991kg8WfyO3gNc6
	 +2ReQTYUQd0zLBsoIx2NnvRL+BYtOn83yOvQGtwEs+oThlrW18iyYiKwChHbrVGBv5
	 3wT9N6tYQpJLkVOqIpvtliVhHaYF9QMqsSky42A0=
Date: Sun, 23 Jun 2024 10:01:54 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Jacobe Zang <jacobe.zang@wesion.com>
Cc: "arend.vanspriel@broadcom.com" <arend.vanspriel@broadcom.com>, 
	"kvalo@kernel.org" <kvalo@kernel.org>, "duoming@zju.edu.cn" <duoming@zju.edu.cn>, 
	"bhelgaas@google.com" <bhelgaas@google.com>, "minipli@grsecurity.net" <minipli@grsecurity.net>, 
	"linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, "brcm80211@lists.linux.dev" <brcm80211@lists.linux.dev>, 
	"brcm80211-dev-list.pdl@broadcom.com" <brcm80211-dev-list.pdl@broadcom.com>, "robh@kernel.org" <robh@kernel.org>, 
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>, 
	"heiko@sntech.de" <heiko@sntech.de>, Nick Xie <nick@khadas.com>, 
	"efectn@protonmail.com" <efectn@protonmail.com>, "jagan@edgeble.ai" <jagan@edgeble.ai>, 
	"dsimic@manjaro.org" <dsimic@manjaro.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v1 3/3] net: wireless: brcmfmac: Add support for AP6275P
Message-ID: <ksxio3vzlz4rqcwvmtthskv6lqt33ejzjes557rwnkzex2oihk@52ueay5cwuub>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>, 
	Jacobe Zang <jacobe.zang@wesion.com>, "arend.vanspriel@broadcom.com" <arend.vanspriel@broadcom.com>, 
	"kvalo@kernel.org" <kvalo@kernel.org>, "duoming@zju.edu.cn" <duoming@zju.edu.cn>, 
	"bhelgaas@google.com" <bhelgaas@google.com>, "minipli@grsecurity.net" <minipli@grsecurity.net>, 
	"linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, "brcm80211@lists.linux.dev" <brcm80211@lists.linux.dev>, 
	"brcm80211-dev-list.pdl@broadcom.com" <brcm80211-dev-list.pdl@broadcom.com>, "robh@kernel.org" <robh@kernel.org>, 
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>, 
	"heiko@sntech.de" <heiko@sntech.de>, Nick Xie <nick@khadas.com>, 
	"efectn@protonmail.com" <efectn@protonmail.com>, "jagan@edgeble.ai" <jagan@edgeble.ai>, 
	"dsimic@manjaro.org" <dsimic@manjaro.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20240620020015.4021696-1-jacobe.zang@wesion.com>
 <20240620020015.4021696-4-jacobe.zang@wesion.com>
 <fro2xcwsnvbxmpszny6g2p36z4zwoq4kegmpvww4twxir5piez@a3c2nbwitmab>
 <TYZPR03MB700154AE39D44B8D166344BF80CB2@TYZPR03MB7001.apcprd03.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <TYZPR03MB700154AE39D44B8D166344BF80CB2@TYZPR03MB7001.apcprd03.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240623_010200_712990_534BC975 
X-CRM114-Status: GOOD (  24.50  )
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

Hi Jacobe,

On Sun, Jun 23, 2024 at 02:21:39AM GMT, Jacobe Zang wrote:
> > Any reason to strip info about origin of the patch, my SoB and
> > present this work as your own?
> 
> Sincerely express my apology to Ondrej. It's really my mistake. After getting
> your permission if I could submit the patches. I jsut think if the author and
> submitter is not the same person is strange so I changed it. Next tiem I will
> avoid this mistake. Apologize again.
> 
> 
> > I sincerely hope this is just a rookie mistake so please carefully read
> the URL below:
> 
> > https://www.kernel.org/doc/html/latest/process/submitting-patches.html
> 
> Thanks for the guidance Arend. After reading the document I realized what a stupid mistake I made.
> 
> BTW I have another question, except the SoB of the real author, should I also post the original link in commit message?

I suggest keeping at least this part:

> Partially copied from https://lore.kernel.org/all/c7b331edd65b66521a6605177d654e55051568a3.camel@toradex.com/
> 
> (No Signed-off-by provided in the email. The code looks like some
> data copied probably from a vendor driver and adapted for the upstream
> one.)

I'm not the complete author of the patch either. I just figured out why
just adding device/chip IDs was not enough compared to what Marcel Ziswiler
tried and expanded the patch from his email, to make it work.

People using baords with AP6275P (eg. I did my debugging on QuartzPro64) will
also be interested in how to get the firmware for AP6275P, and there are some
hints for that in the above link, too. (FW filename that is in the patch for the
driver doesn't match FW name as distributed by eg. SparkLAN, which makes it
harder to find it just based on FW name from the code)

Although it would be nice to have the firmware available in linux-firmware.

Kind regards,
	o.

> ---
> Best Regards
> Jacobe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
