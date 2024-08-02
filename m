Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CACE1C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Aug 2024 17:18:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QzvTnRFFOcPLsQrheqcBD6wBMeAsJgwOHNLiOnrwT48=; b=GFvEdPfGKBIUNU
	d/+p84LtvtnN8ffOXo8UyoIBvkqhsGKG1sA35jsApPHILGzHnN/m0HP323IZNDQcJYr6ChUEaLb0J
	mM/5qCkbliJne/K2FozfAYsnrPZuoKioH7SwwC+6i1JDngxV+e4P8UJND9QXIg6FkunvpL++y+YzL
	/w8E3iH4P2/RRsswIljzllkEaXnGoxGGCh1k2lmYySJ9cwQ31Moy8JUpv5e+Hd+7bmXtmg/3Kh6JD
	qojq/SkY2deL+o636d22ka+/KbtK4NgmYyxKU9amloHzjsLGcbCDOZXoX2BoEPjUQiUg24xyCjZii
	RZHXYAE846IsZsudRiQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZvv5-00000009a2H-3FcV;
	Fri, 02 Aug 2024 17:18:23 +0000
Received: from mgamail.intel.com ([192.198.163.9])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZvuZ-00000009ZxR-0fiV;
	Fri, 02 Aug 2024 17:17:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1722619071; x=1754155071;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=o9DJWhGlqtKQ1iWtEKepaZu/t4tj65qSh5IdSpzdbCo=;
  b=lwScdWuMXWfATwt8ajLJsjWNIXh7m1sGOtHbIaA4em/8WJd6M5jM0H9A
   82X+4mfvmXYZvg8LS+ktYt4+obivx1m1YllOWGxxvCdxREQgl87nSPaQ9
   lNBkWFAuEBldeRz+C5JTTRds1GgHXo4c1GCpHv2CL3s2h+FT4n5al29qW
   gnQQn2a17XvE27Tj9PXYXAG/0VCr/h9/c9UByXu4I9/GLDn76rELhCqMo
   ey/xwa3BqbInygujcPNLJvSBOJgB1nglbt37eW8oIGoUEDwzy2GoaRriQ
   TqRwOrhc1PLZJCl/4rk5wXvjTMoMdu9/zmrlb+niiCKO/TxNzr/Y+mjfY
   Q==;
X-CSE-ConnectionGUID: evIW/RLTQo2l+VplZ/3tWA==
X-CSE-MsgGUID: yngTqh1JTyy8Jh+ILd/P0g==
X-IronPort-AV: E=McAfee;i="6700,10204,11152"; a="31296289"
X-IronPort-AV: E=Sophos;i="6.09,258,1716274800"; 
   d="scan'208";a="31296289"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
  by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Aug 2024 10:17:50 -0700
X-CSE-ConnectionGUID: hRN/0xX9QpaChBGARfY0ow==
X-CSE-MsgGUID: PPBUJ3eyQS+/+TdOfJxyBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,258,1716274800"; 
   d="scan'208";a="60309478"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
  by orviesa005.jf.intel.com with ESMTP; 02 Aug 2024 10:17:46 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1sZvuR-000xBO-2v;
	Fri, 02 Aug 2024 17:17:43 +0000
Date: Sat, 3 Aug 2024 01:16:52 +0800
From: kernel test robot <lkp@intel.com>
To: Heiko Stuebner <heiko@sntech.de>, lee@kernel.org, jdelvare@suse.com,
	linux@roeck-us.net, dmitry.torokhov@gmail.com, pavel@ucw.cz
Cc: oe-kbuild-all@lists.linux.dev, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, heiko@sntech.de, ukleinek@debian.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-hwmon@vger.kernel.org,
	linux-input@vger.kernel.org, linux-leds@vger.kernel.org
Subject: Re: [PATCH v3 2/7] mfd: add base driver for qnap-mcu devices
Message-ID: <202408030016.QLOhRHF1-lkp@intel.com>
References: <20240731212430.2677900-3-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240731212430.2677900-3-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240802_101751_237998_378A60AB 
X-CRM114-Status: GOOD (  16.41  )
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

Hi Heiko,

kernel test robot noticed the following build warnings:

[auto build test WARNING on next-20240801]
[also build test WARNING on v6.11-rc1]
[cannot apply to groeck-staging/hwmon-next lee-leds/for-leds-next lee-mfd/for-mfd-next lee-mfd/for-mfd-fixes linus/master v6.11-rc1 v6.10 v6.10-rc7]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Heiko-Stuebner/dt-bindings-mfd-add-binding-for-qnap-ts433-mcu-devices/20240802-103948
base:   next-20240801
patch link:    https://lore.kernel.org/r/20240731212430.2677900-3-heiko%40sntech.de
patch subject: [PATCH v3 2/7] mfd: add base driver for qnap-mcu devices
config: sh-allmodconfig (https://download.01.org/0day-ci/archive/20240803/202408030016.QLOhRHF1-lkp@intel.com/config)
compiler: sh4-linux-gcc (GCC) 14.1.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240803/202408030016.QLOhRHF1-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202408030016.QLOhRHF1-lkp@intel.com/

All warnings (new ones prefixed by >>):

   In file included from include/linux/device.h:15,
                    from include/linux/platform_device.h:13,
                    from include/linux/mfd/core.h:13,
                    from drivers/mfd/qnap-mcu.c:12:
   drivers/mfd/qnap-mcu.c: In function 'qnap_mcu_receive_buf':
>> drivers/mfd/qnap-mcu.c:108:31: warning: format '%lu' expects argument of type 'long unsigned int', but argument 3 has type 'size_t' {aka 'unsigned int'} [-Wformat=]
     108 |                 dev_warn(dev, "received %lu bytes, we were not waiting for\n",
         |                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/dev_printk.h:110:30: note: in definition of macro 'dev_printk_index_wrap'
     110 |                 _p_func(dev, fmt, ##__VA_ARGS__);                       \
         |                              ^~~
   include/linux/dev_printk.h:156:61: note: in expansion of macro 'dev_fmt'
     156 |         dev_printk_index_wrap(_dev_warn, KERN_WARNING, dev, dev_fmt(fmt), ##__VA_ARGS__)
         |                                                             ^~~~~~~
   drivers/mfd/qnap-mcu.c:108:17: note: in expansion of macro 'dev_warn'
     108 |                 dev_warn(dev, "received %lu bytes, we were not waiting for\n",
         |                 ^~~~~~~~
   drivers/mfd/qnap-mcu.c:108:43: note: format string is defined here
     108 |                 dev_warn(dev, "received %lu bytes, we were not waiting for\n",
         |                                         ~~^
         |                                           |
         |                                           long unsigned int
         |                                         %u


vim +108 drivers/mfd/qnap-mcu.c

    96	
    97	static size_t qnap_mcu_receive_buf(struct serdev_device *serdev,
    98					   const u8 *buf, size_t size)
    99	{
   100		struct device *dev = &serdev->dev;
   101		struct qnap_mcu *mcu = dev_get_drvdata(dev);
   102		struct qnap_mcu_reply *reply = mcu->reply;
   103		const u8 *src = buf;
   104		const u8 *end = buf + size;
   105	
   106		mutex_lock(&mcu->reply_lock);
   107		if (!reply) {
 > 108			dev_warn(dev, "received %lu bytes, we were not waiting for\n",
   109				 size);
   110			mutex_unlock(&mcu->reply_lock);
   111			return size;
   112		}
   113	
   114		while (src < end) {
   115			reply->data[reply->received] = *src++;
   116			reply->received++;
   117	
   118			if (reply->received == reply->length) {
   119				complete(&reply->done);
   120				mutex_unlock(&mcu->reply_lock);
   121	
   122				/*
   123				 * We report the consumed number of bytes. If there
   124				 * are still bytes remaining (though there shouldn't)
   125				 * the serdev layer will re-execute this handler with
   126				 * the remainder of the Rx bytes.
   127				 */
   128				return src - buf;
   129			}
   130		}
   131	
   132		/*
   133		 * The only way to get out of the above loop and end up here
   134		 * is through consuming all of the supplied data, so here we
   135		 * report that we processed it all.
   136		 */
   137		mutex_unlock(&mcu->reply_lock);
   138		return size;
   139	}
   140	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
