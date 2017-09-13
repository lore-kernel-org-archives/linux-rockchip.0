From: "David.Wu" <david.wu@rock-chips.com>
Subject: Re: [PATCH 2/8] configs: rockchip: Enable the
	ROCKCHIP_SARADC config
Date: Wed, 13 Sep 2017 19:10:59 +0800
Message-ID: <9caf7fd3-61dc-013e-5418-52f69f2f56de@rock-chips.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="----------=_59B91248.4A8AD832"
Return-path: <u-boot-bounces@lists.denx.de>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <http://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: "Dr. Philipp Tomsich" <philipp.tomsich@theobroma-systems.com>
Cc: huangtao@rock-chips.com, u-boot@lists.denx.de, zhangqing@rock-chips.com, linux-rockchip@lists.infradead.org, andy.yan@rock-chips.com, chenjh@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

This is a multi-part message in MIME format.

------------=_59B91248.4A8AD832
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Spam detection software, running on the system "lists.denx.de",
has identified this incoming email as possible spam.  The original
message has been attached to this so you can view it or label
similar future email.  If you have any questions, see
@@CONTACT_ADDRESS@@ for details.

Content preview:  Hi Dr.Philipp, 在 2017/9/13 18:20, Dr. Philipp Tomsich 写道:
   > Please use an ‘imply’ in the Kconfig for the various SoCs (or possibly
   > even the entire sub-architecture) or a "default y if …”. > > Given
  that this is a DM-enabled driver, there is no harm in compiling > it in, even
   if a given board does not use it. This should make defconfig > changes unnecessary
   (unless someone really needs to override the > implied setting). [...] 

Content analysis details:   (5.6 points, 5.0 required)

 pts rule name              description
---- ---------------------- --------------------------------------------------
 2.6 RCVD_IN_SBL            RBL: Received via a relay in Spamhaus SBL
                            [211.157.147.132 listed in zen.spamhaus.org]
 0.6 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
                            [58.22.7.114 listed in dnsbl.sorbs.net]
 2.4 RCVD_IN_MSPIKE_L5      RBL: Very bad reputation (-5)
                            [211.157.147.132 listed in bl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted



------------=_59B91248.4A8AD832
Content-Type: message/rfc822; x-spam-type=original
Content-Description: original message before SpamAssassin
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Received: from lucky1.263xmail.com (lucky1.263xmail.com [211.157.147.132])
	by lists.denx.de (Postfix) with ESMTPS id CE2AFC21FE9
	for <u-boot@lists.denx.de>; Wed, 13 Sep 2017 11:11:00 +0000 (UTC)
Received: from david.wu?rock-chips.com (unknown [192.168.167.225])
	by lucky1.263xmail.com (Postfix) with ESMTP id E408164894;
	Wed, 13 Sep 2017 19:10:56 +0800 (CST)
X-263anti-spam: KSV:0;
X-MAIL-GRAY: 1
X-MAIL-DELIVERY: 0
X-KSVirus-check: 0
X-ABS-CHECKED: 4
Received: from [172.16.12.113] (localhost [127.0.0.1])
	by smtp.263.net (Postfix) with ESMTPA id 165AB387;
	Wed, 13 Sep 2017 19:10:56 +0800 (CST)
X-RL-SENDER: david.wu@rock-chips.com
X-FST-TO: u-boot@lists.denx.de
X-SENDER-IP: 58.22.7.114
X-LOGIN-NAME: david.wu@rock-chips.com
X-UNIQUE-TAG: <53080df8042232d7390e9efe16eef25b>
X-ATTACHMENT-NUM: 0
X-SENDER: wdc@rock-chips.com
X-DNS-TYPE: 0
Received: from [172.16.12.113] (unknown [58.22.7.114])
	by smtp.263.net (Postfix) whith ESMTP id 27608FYPE4V;
	Wed, 13 Sep 2017 19:10:58 +0800 (CST)
Subject: Re: [PATCH 2/8] configs: rockchip: Enable the ROCKCHIP_SARADC config
To: "Dr. Philipp Tomsich" <philipp.tomsich@theobroma-systems.com>
Cc: Simon Glass <sjg@chromium.org>, huangtao@rock-chips.com,
 Kever Yang <kever.yang@rock-chips.com>, andy.yan@rock-chips.com,
 chenjh@rock-chips.com, heiko@sntech.de, zhangqing@rock-chips.com,
 linux-rockchip@lists.infradead.org, u-boot@lists.denx.de
References: <1505297379-12638-1-git-send-email-david.wu@rock-chips.com>
 <1505297379-12638-3-git-send-email-david.wu@rock-chips.com>
 <18B5183D-1F9D-4279-A85A-5355B709A1C6@theobroma-systems.com>
From: "David.Wu" <david.wu@rock-chips.com>
Message-ID: <9caf7fd3-61dc-013e-5418-52f69f2f56de@rock-chips.com>
Date: Wed, 13 Sep 2017 19:10:59 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <18B5183D-1F9D-4279-A85A-5355B709A1C6@theobroma-systems.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Dr.Philipp,

在 2017/9/13 18:20, Dr. Philipp Tomsich 写道:
> Please use an ‘imply’ in the Kconfig for the various SoCs (or possibly
> even the entire sub-architecture) or a "default y if …”.
> 
> Given that this is a DM-enabled driver, there is no harm in compiling
> it in, even if a given board does not use it.  This should make defconfig
> changes unnecessary (unless someone really needs to override the
> implied setting).

Yeap, it is no harm to compile it in, so config the CONFIG_ADC and 
CONFIG_SARADC_ROCKCHIP with a default y in Kconfig?


------------=_59B91248.4A8AD832
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVS1Cb290IG1h
aWxpbmcgbGlzdApVLUJvb3RAbGlzdHMuZGVueC5kZQpodHRwczovL2xpc3RzLmRlbnguZGUvbGlz
dGluZm8vdS1ib290Cg==

------------=_59B91248.4A8AD832--
