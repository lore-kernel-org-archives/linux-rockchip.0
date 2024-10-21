Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCC26D15D99
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Oct 2024 15:46:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hr/ijFc0evC9K/WElhf1cLGJAVSP8xvvI+6+eyw7u9A=; b=pXQLvnXZVgPb7s
	66OYD+iaLR61LPRehLK8jiwYB2fzeqipkzn4/vsEw4XxR0unvnubFA6I6YK/0GJiu/Q/Yfn6XRdBu
	a02QPv+Dty6UwgdS2SxvFeElPjuOEpek4Rv3fLan24ygzUyKmkzNjFuNvOLTheXuQsiP5sWnOM8rk
	U/wjTs0E+TDD788hwivvKLw56PMgeGCx9b7EOTpclBw07olLpAdXlprmJeROjggF5T88i+6hrtKnf
	m6AkcgK5ULvM6dBO0jPED8aWzZHgCiV6dauM6tuTv2amK+hpplEeWkBtkW+hSD369ElBGSeBujAas
	p7NaOZpT6MtYGtbN6+1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2ubp-00000007qbG-1c1l;
	Mon, 21 Oct 2024 15:46:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2uaK-00000007qD9-30KU
	for linux-rockchip@lists.infradead.org;
	Mon, 21 Oct 2024 15:44:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=QH+aI0aROMXqOn964e15GW4seNKcIlI1oi/7XkRD5BM=; b=ANBkDGEzfRYEkpuz2eOa01y3nl
	oPerAwnTsH2GVI4Ps6ZIdwSrk+XxQ1l5z51YFUIqw647le3EEWYr8PJL/eFk9bRhRXrmOfAJuY5Ft
	FTOP0yYgLr5w+boRpnj2nFNv2DD6uWS3nZXOsKp2Aad4hCkqgG03LHnGRFsd43bI++6CRdhX2s8nq
	bBEi+fTT27tBm/Wfw1uTmmyJb180IaGiZQ/HJoeVnrOn8qRCuTRf4t43616yBDDDXhRSJKa2XWs57
	74TcaI2tHHxrxS9s+p95tB/YqJGcNSXkQ5H5YFyBXcSqNT9cT19NLjDYzlRO+p0OqDKOJJXYp+wBH
	YkMasuvw==;
Received: from i53875b34.versanet.de ([83.135.91.52] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t2uaJ-0005jR-Ct; Mon, 21 Oct 2024 17:44:43 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Cenk Uluisik <cenk.uluisik@googlemail.com>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Enable HDMI0 on Orange Pi 5
Date: Mon, 21 Oct 2024 17:44:37 +0200
Message-ID: <172952545661.1342338.18130629908263296017.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241019021034.1710-1-honyuenkwun@gmail.com>
References: <20241019021034.1710-1-honyuenkwun@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_084444_789073_0FE2A198 
X-CRM114-Status: UNSURE (   7.33  )
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

On Fri, 18 Oct 2024 21:10:34 -0500, Jimmy Hon wrote:
> Add the necessary DT changes to enable HDMI0 on Orange Pi 5
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Enable HDMI0 on Orange Pi 5
      commit: 0cdb6e46432df9075966fff6743324cb178fea4f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
