Return-Path: <SRS0=Se97=KJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C504C433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 12:29:55 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 119E3613D6
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 12:29:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 119E3613D6
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lTn6poD0jGr0nrCm4nR54p72cbQlrzf/oRm2Pmn6vAA=; b=LMKtcJKZ6yNVTE7svN7N6ySO2
	RYstD+TGG/+M5Z6OHEo+hWaAiI2Wm3o9RyDiKfVqGT2l/xgqi5POegHlxr7mGM34YPInvEmOS9yYV
	uwZ1JDRLPlIBvtzU8dWXlZvI4sxwIDYni4wmNermfzf9RPy9PCgLsZezQkFfOt3ZazqUcdrfvfM6h
	w2GV5xK+oywHp190EoJ9HuVp0yRNovdFX4EB/uMpx5VhlbrM4SOZEYUyRaRnzpos50dNRT2RfK07M
	h11NrfxEuZ2WelDrcDCsaHHYO7Xtbp7v+ncoA3XSQmcRZidCq5f4A/HEsi83cb19sW5k8qwFZo6Lx
	7+zTAc17g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhWww-0082G9-6c; Fri, 14 May 2021 12:29:50 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhWwu-0082Fl-1a; Fri, 14 May 2021 12:29:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=NZ2NcYtTgXj2Riv+4jjSm4CtjtumP+ZaVL2+WTZulS4=; b=JXLBzLa70619tSTWbROkWWzPDc
 tlfx8psM9VnNIwiCeX3Zy2gbAIS7V71gIWqlu6QQI+yYhCuUNr9afgqDgZEO7Pv+zst+MynSbyeBa
 ttNkn4w3E9yUxNe3J7fbyMSCEDsTE4ubFMGa/VHQJgyWYzkvX+m3uAGEuKyvumcz+qGNRp/EnarOJ
 /AKhcjXdOaCmVryeYqB4MVsEHpbvDH9AhLn8Gj2YCYD+rp4IIxJqn4SdLEIZ6Uj5YZ/Jv3PwTblrE
 bzHav3PejPfmmes9E8a0Ls1TbEbVK78qPbj+Oly7rJd4UuvuOU2KgCDOneEk1z9P5WMFHRhMDEP87
 KNd/AM7g==;
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhWwr-00ByN1-Io; Fri, 14 May 2021 12:29:46 +0000
Received: from p5b127fa9.dip0.t-ipconnect.de ([91.18.127.169]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lhWwp-0002eq-0X; Fri, 14 May 2021 14:29:43 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, robh+dt@kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: rockchip: Remove more clock-names from PWM
 nodes A test with the command below gives this error:
Date: Fri, 14 May 2021 14:29:40 +0200
Message-Id: <162099533685.1969114.6556603856663835579.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210510172911.6763-1-jbx6244@gmail.com>
References: <20210510172911.6763-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_052945_643315_2DC35E4B 
X-CRM114-Status: GOOD (  12.93  )
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

On Mon, 10 May 2021 19:29:11 +0200, Johan Jonker wrote:
> /arch/arm/boot/dts/rk3228-evb.dt.yaml:
> pwm@110b0020: clock-names: ['pwm'] is too short
> 
> Devices with only one PWM clock use it to both to derive the functional
> clock for the device and as the bus clock. The driver does not need
> "clock-names" to get a handle, so remove them all.
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: rockchip: Remove more clock-names from PWM nodes A test with the command below gives this error:
      commit: dc71c5ca34f408030b979d894c0459ef059445a1

Fixed the patch subject that somehow got mangled together with
the first line of the patch message.

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
