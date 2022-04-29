Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 438ABC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Apr 2022 01:41:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/zyXvJvXQvZ5SRd6sbU8jjhdpyY1vwLCESFeitRRXCY=; b=R7qdXOPD/qVLda
	eBtZEQ60/itkXD8N+eMllu/cLXCvNzk7TOACbiE9SGrAY7lLka1G7C3tz0VVEj7ovkOwlNtC7R8yJ
	uK820PMxoAQ9PamxqtM+znjOraJHjtiGovFUF3rIsXl5hDVgYZDyC5lXl8VZUQnUPUVFefEzVDIzT
	7MhSlPRjYmspl1f2zZvR5DVX0mDWC/YyRa09tGF0mZE/CCWBZEcdTqI3UsZf9XARRCEL+tNPyBGHZ
	uCyOChrX6giAxf7NK377nBJglJU7+uMioVOVHBvqaStMJ8pNXp8wyuwZAsqX7e1qI2DomWF1vqZ2M
	3MM72iGDmZbA4pNHP7OQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkFd9-009Fo0-NG; Fri, 29 Apr 2022 01:41:11 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkFcx-009Fkr-Re; Fri, 29 Apr 2022 01:41:01 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id A25D7B8328E;
 Fri, 29 Apr 2022 01:40:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF7CBC385AC;
 Fri, 29 Apr 2022 01:40:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1651196456;
 bh=Hz6ulH+o/XA3d/ohY6QMo3a7cl6ZEDIejB0K3veZ9gw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=hbqr3sYCWquHPPIGT12Ir8IJ8M2rIRjkIx6bydazwbRTF3vsdVxWbwmYa17j93Y1T
 CmPDfLH9/sDfXM56lx64FfPeN3m/SyTtFt+mBdpbqM9RpLRfUKY9JiEPiPJUQgKhe5
 ili1hZR4k4Jg/LhXv3cRQZ+mnkM/L307Xkmuws0+bkoIKJD9JPiuJ5uCmPW0G/LgHs
 xvD8NR0nSQsQf+KwKIfjHsO89fGbTNUkhpu5/B4Qs1xveASSPEqOjG6sd4w+0f7v+S
 40LohYVRzYdxcPUfmec/UFYagUWtr32Qt/8I7TdWHZiGPlgW/XEijZHyWCaXzku6vH
 La9YD2kGDcCWA==
Date: Thu, 28 Apr 2022 18:40:54 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: davem@davemloft.net, joabreu@synopsys.com, alexandre.torgue@st.com,
 peppe.cavallaro@st.com, netdev@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH V2] ethernet: stmmac: support driver work for DTs
 without child queue node
Message-ID: <20220428184054.3dd72784@kernel.org>
In-Reply-To: <20220429004605.1010751-1-jay.xu@rock-chips.com>
References: <20220428010927.526310-1-jay.xu@rock-chips.com>
 <20220429004605.1010751-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220428_184100_079758_01F36E96 
X-CRM114-Status: GOOD (  11.03  )
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

On Fri, 29 Apr 2022 08:46:05 +0800 Jianqun Xu wrote:
> The driver use the value of property 'snps,rx-queues-to-use' to loop
> same numbers child nodes as queues, such as:
> 
>     gmac {
>         rx-queues-config {
>             snps,rx-queues-to-use = <1>;
>             queue0 {
>                 // nothing need here.
> 	    };
> 	};
>     };

I think you mean tx, not rx, given the code.

>  
>  		queue++;
>  	}
> -	if (queue != plat->tx_queues_to_use) {
> +	if (queue != plat->tx_queues_to_use && of_get_child_count(tx_node)) {
>  		ret = -EINVAL;
>  		dev_err(&pdev->dev, "Not all TX queues were configured\n");
>  		goto out;

Also what about the init to defaults I asked about?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
