Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A43E41099B37
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Mar 2026 20:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M/QP3P6j83F0cZ6w6r3cRWP+tLefBRIgWHs5GpiB5qk=; b=W8WpEddbcTHzyT
	l1FRIWwOwzGUkIf8USzem/T+qeAnagFaKFjP8GZi99px/EmBMlFh9wTEsvbzdgajONmt0W3QcdmAn
	UrMLi0HvkqYe5PQAFbRam2QvrAHVVK7ABG3ENrCM14oa9tNTmzDIg0NDLzvQBOlXjCFwU5uDEpfem
	WcKhyZtILUbmSOeswW1KYlnR0V+CcbS5m5Hh8F6FAYcPHwJ3lEVNkR1ef/AXW8F3NAQRn0aINVKOc
	f7ZNSL9Uk6PWMZw11BjQqnCysFi8+J8/I2JRHplqTN6n169nQr3nfsiFUIyAusE9Cgpz+a+gzygHq
	0iSFjkgn09FfcscCZ8MQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3g13-0000000DXX9-0h48;
	Fri, 20 Mar 2026 20:00:17 +0000
Received: from mgamail.intel.com ([192.198.163.7])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3g0z-0000000DXWo-1vDo
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Mar 2026 20:00:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1774036813; x=1805572813;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=3r5Dqp+WPxxPo6MxzHzpX2ZPdVn63bA4BVuyeCdHdSk=;
  b=dDtpb9b5ROYjXFePXch0190/qq44y2FiEomkgH3fvK+6qqQ4gtUmRjoK
   7Kh/63OR508JmriU4uQitaqr3A4bRtLA1UPCiC+ngsi1QwaOIblyWhVVt
   7LG2c3/57VsrXlOa33IEIWZDYrteva4BIntbTDNSTQA8VHykpT+8LdRno
   55k4qnk36m0sp+q1DtZTBDPRxIyQBXBpwv+t71vjw9+P5SmPmQAvW1ddV
   pCshbWpCYFOW00/xqI6Hhj2xT3Cpb3i45M0HHHBkV8RT79sTt6dhnAPID
   SwWW2uMK1J2yDrkdwIcN1/WVPVivPjhpBXXGEtdyGMFjyU6T5Y+L6WJ+6
   A==;
X-CSE-ConnectionGUID: Ly2LxeUFSHCIfSrZ1NygAA==
X-CSE-MsgGUID: +R0oF1STRBKbwdPrHx1+Hw==
X-IronPort-AV: E=McAfee;i="6800,10657,11735"; a="100584508"
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; 
   d="scan'208";a="100584508"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
  by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Mar 2026 13:00:13 -0700
X-CSE-ConnectionGUID: sR98MtiCSdypSm62QI/DZw==
X-CSE-MsgGUID: vjCPd64eRQevYsybBhJggw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; 
   d="scan'208";a="261283105"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost) ([10.245.245.40])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Mar 2026 13:00:09 -0700
Date: Fri, 20 Mar 2026 22:00:06 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
	dlechner@baylibre.com, jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v2 0/5] Add Invensense ICM42607
Message-ID: <ab2nRu2XnJx3SqKP@ashevche-desk.local>
References: <20260319182956.146976-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260319182956.146976-1-macroalpha82@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260320_130013_559077_909BC952 
X-CRM114-Status: UNSURE (   8.17  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Mar 19, 2026 at 01:29:36PM -0500, Chris Morgan wrote:

> Add support for the ICM42607 IMU. This sensor shares the same
> functionality but a different register layout with the existing
> ICM42600.
> =

> This driver should work with the ICM42607 and ICM42607P over both I2C
> and SPI, however only the ICM42607P over I2C could be tested.

Please, make sure each patch is ~750 =B1150 LoC, so it's reviewable.
Last patch is unreviewable 2k+ LoC!

-- =

With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
