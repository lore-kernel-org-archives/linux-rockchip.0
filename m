Return-Path: <SRS0=ewtI=OV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23ECCC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Oct 2021 10:24:50 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DFE7D6103D
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Oct 2021 10:24:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org DFE7D6103D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FN32NxrBG7NtbGdblT2hpvS9awAzYsutUGcbRBa2N58=; b=yYyZTbjtmfhROV
	NrCvyBsudmYD4OZURU012ewXPFMjKfzqXvdh1L164XwtLQ6IG8N/k/CAf82HaErjYdvr3aZs3sC1L
	3OL3RZP3hIR1/fpHlm22QZ0GpD15GJnWXAQp/T8LLGMeRSqrcPT5JJXL4yh9hxawbreJ8NxSSEX5X
	Fd5pj/H5YcX7Vx53jFUXhpAH1/lQj1B5U/Y1j/+ToC9OWiJSjoZqBKRGY7qxx3yQ+ojOh5XOHuQVb
	jfV4MgaalDck4b9+Lfyi88HdCD5nQhh1FTd4JwYqYxZZMbf9KMiXnq3BQ+KfOwVCflDQHLmkxN8+d
	hIfd2TbYUQyNEMfFiyxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWFig-00HUDf-On; Fri, 01 Oct 2021 10:24:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWFiU-00HUCP-LA; Fri, 01 Oct 2021 10:24:35 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 61D5A6103D;
 Fri,  1 Oct 2021 10:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1633083874;
 bh=d2B3aqMqCeg19jkk4r/VHqci8GXUvcnxdV2Hf+/w4Og=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Oq0EJTGmH24SIL3sllAtZp7cphGmYZyf40/foG2HbPnUXk/plxpKAGr/YaiCcfOiF
 TRKJWDcOtQ+ziqW6RhhLTD2V6yqe/oLEsZqYjSfDHJyvEE7rXKEB0esqK8Hvv7mMeI
 TGd3F6hTPp/8DhoUDoi9veNWHyHBLijbkcDRtvdjM9ZD4j61+qUAtTNYKjHnN8LHnu
 +yVsdC2VnAVRHRqS88R27Xwrrv2hPFhxWLyBqSixR3m4ry3zerYCgb/CD6MsN/It4N
 o7J2ROHkwGASNURqiuqiWUPNMD1uodpKhwOhuKbqheyfTdpSR7zKUqbQSEoPkTJdzH
 jjBjbRs3GUsrQ==
Date: Fri, 1 Oct 2021 15:54:30 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Cai Huoqing <caihuoqing@baidu.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: rockchip-inno-usb2: Make use of the helper function
 devm_add_action_or_reset()
Message-ID: <YVbh3gRziCXf1iAk@matsya>
References: <20210922130024.745-1-caihuoqing@baidu.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210922130024.745-1-caihuoqing@baidu.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211001_032434_724136_D4CE9100 
X-CRM114-Status: UNSURE (   7.23  )
X-CRM114-Notice: Please train this message.
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

On 22-09-21, 21:00, Cai Huoqing wrote:
> The helper function devm_add_action_or_reset() will internally
> call devm_add_action(), and gif devm_add_action() fails then it will
> execute the action mentioned and return the error code. So
> use devm_add_action_or_reset() instead of devm_add_action()
> to simplify the error handling, reduce the code.

Applied, thanks

-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
