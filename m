Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D95C2CCD1AA
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Oct 2025 12:19:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:cc:To:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ffivUmJMiF3ZqpjuMdc4w4uraYrzOKz31qjzRpaldV0=; b=V32Pgo/1qrFldZ
	3Dhceskz96PcEQd6ersM1H5O5DoRHGAGjA2j+YA3HUexx80q90/w/IqGDR7yzHldOK8vNGpfMmci7
	70HISEDysO+77BcZUpNQy6jjcs7v1VGzj0x9kNl7UrZIBTi6OSidoEgt8nAZXtpdqqu1WukQRuTHg
	zHuwBkDBvz81QKJ3MJZzgSuKh/DqODJxjuYIBY2o6rRgtfMQmcNUN+WDpsaekK3fS6IAaw4k6mTU8
	689OoIp/UX/dn0DB0BP6m7iFPXIuZ0FAVzY2lFHuvk7vXYHV5tAKXrKg/eoFL+Y3T31IkV+jGvuHd
	A5MTkz6KlflYGada7ikQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBBLA-0000000GwPD-1dlA;
	Tue, 21 Oct 2025 12:19:48 +0000
Received: from mgamail.intel.com ([198.175.65.17])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBBL8-0000000GwNy-0mQ7
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Oct 2025 12:19:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1761049186; x=1792585186;
  h=from:date:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=s6vx8VrH2c/og0yLWr/Y9sUR3aZ+qnxVoV5eMNt6vVE=;
  b=bdMZMNJhhSIf9HBQ46qaXeR+CnFulqQRQv2ad+G29Zr1CxIWxjqSAiSO
   KqGddJTbm8oNl5391Sg1fbzl5aKy2nrJ1/z1RxmBiH88n6xRaxaMxQpHs
   70bRKgBM9qy6bNHDdEpgFUVlp7YWJVPoh8n/eEVosY3EPN/ikntVe7wBJ
   tOchg37wzPI+gSp5q3difITOHA2UQ2a08Pm5O/3L6U0HgzOnvDWDCK07v
   zwPlehD7A1UMu8qBQ5Ans9hPMZvTSmEsDpdrGooREnCyr7HajgMcORXfO
   ySQhva43zxvWamdKBuTPQJzk/EzopnFQQk2tC6RdsVx9JM1BzOU9E7cMK
   w==;
X-CSE-ConnectionGUID: Shrl9glOS9eZEgHB/ZE/lA==
X-CSE-MsgGUID: Dpj1WBAlTh+6EBisk//Vvw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="63093567"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; 
   d="scan'208";a="63093567"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
  by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Oct 2025 05:19:45 -0700
X-CSE-ConnectionGUID: gG0xkmzTT+2jbxeYjZUpCg==
X-CSE-MsgGUID: O9PRIGNiSiacB+a42S6WVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,244,1754982000"; 
   d="scan'208";a="183606993"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.245.189])
  by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Oct 2025 05:19:43 -0700
From: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Date: Tue, 21 Oct 2025 15:19:39 +0300 (EEST)
To: FUKAUMI Naoki <naoki@radxa.com>
cc: Manivannan Sadhasivam <mani@kernel.org>, 
    linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org
Subject: Re: ROCK 5B/5B+ RTL8852BE probe failure on v6.18-rc
In-Reply-To: <3BA1DC4878E9DC7E+85e7ef2c-a762-4c12-8955-64212bc192da@radxa.com>
Message-ID: <b7e058ab-a5bf-1e71-850f-03e99f274e77@linux.intel.com>
References: <7755D0222F97F8A4+6c855efa-561f-4fd9-aadd-a4de3d244c7e@radxa.com> <dgn3ekyon6jwfinerxx2ohpvebnxvuvpyqratfc3ciys4l4et7@5un6wskt4xn3> <3BA1DC4878E9DC7E+85e7ef2c-a762-4c12-8955-64212bc192da@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_051946_278279_9DCE59E0 
X-CRM114-Status: GOOD (  29.62  )
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

On Tue, 21 Oct 2025, FUKAUMI Naoki wrote:

> Hi Manivannan,
> 
> Thank you for your reply.
> 
> On 10/21/25 20:02, Manivannan Sadhasivam wrote:
> > On Tue, Oct 21, 2025 at 07:12:21PM +0900, FUKAUMI Naoki wrote:
> > > Hi,
> > > 
> > > I've observed an issue where the RTL8852BE fails to probe on the ROCK 5B
> > > and
> > > ROCK 5B+ using Linux v6.18-rc.
> > > 
> > > [    7.719288] rtw89_8852be 0002:21:00.0: loaded firmware
> > > rtw89/rtw8852b_fw-1.bin
> > > [    7.720192] rtw89_8852be 0002:21:00.0: enabling device (0000 -> 0003)
> > > [    7.728596] rtw89_8852be 0002:21:00.0: Firmware version 0.29.29.5
> > > (da87cccd), cmd version 0, type 5
> > > [    7.729407] rtw89_8852be 0002:21:00.0: Firmware version 0.29.29.5
> > > (da87cccd), cmd version 0, type 3
> > > [   11.420623] rtw89_8852be 0002:21:00.0: failed to dump efuse physical
> > > map
> > > [   11.422859] rtw89_8852be 0002:21:00.0: failed to setup chip information
> > > [   11.425273] rtw89_8852be 0002:21:00.0: probe with driver rtw89_8852be
> > > failed with error -16
> > > 
> > > This issue does not reproduce on v6.16. The issue does not reproduce with
> > > the MT7921E or the AX210. Furthermore, the issue does not reproduce on the
> > > ROCK 5A or the ROCK 5 ITX+.
> > > 
> > > The issue appears not to reproduce in or prior to commit 14bed9bc81ba. The
> > > issue reproduces, albeit with a low incidence rate, after commit
> > > bf76f23aa1c1.
> > 
> > Both of these commits are merge commits and they seem to be not related to
> > PCI
> > or WiFi.
> > 
> > > It reproduces, but not 100%, on v6.17, and is likely 100%
> > > reproducible on v6.18-rc.
> > > 
> > > The dmesg output and the result of lspci -vv when the issue occurs can be
> > > found below:
> > >   https://gist.github.com/RadxaNaoki/bf57b6d3d88c1e4310a23247e7bac9de
> > > 
> > > What should I investigate next?
> > > 
> > 
> > So the patch from Niklas [1] didn't solve the issue on these board + WiFi
> > chip
> > combo?
> 
> Yes, I am reproducing the issue with the patch applied, and it also reproduces
> on v6.17.
> 
> The RTL8852BE on the ROCK 5B+ is an onboard component, while the ROCK 5B uses
> an M.2 module; the issue does not appear on the ROCK 5A or ROCK 5 ITX+ even
> with the same M.2 module and the same kernel/userland.

Hi,

There have been quite a few changes into rtw89 post-6.16. Depending on 
how easy it is to reproduce the issue, a bisection might be useful to 
pinpoint the cause.

> Best regards,
> 
> --
> FUKAUMI Naoki
> Radxa Computer (Shenzhen) Co., Ltd.
> 
> > - Mani
> > 
> > [1]
> > https://lore.kernel.org/linux-pci/20251017163252.598812-2-cassel@kernel.org/
> > 
> 
> 
> 

-- 
 i.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
