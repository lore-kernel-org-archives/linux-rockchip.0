Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A8DDC433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Apr 2022 14:46:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h/TtWQnz9zGYJePUepFEB3+CBh/1NuUCcBeWHoKl7a0=; b=Bq87snWhvbGns7
	Iw3u9N065tQ41ejCyAEPEnbcnrBQ1B93Sd8QZDRKkQc3ixZj65RuuNLgRw+4SxQkJT9uT83n0LDcO
	vX0Ts+/SsrJtTIbuEMRHoF9GYsDKkV5rErWTFb89/6eDvPTmpYy7N7OYqUpJnNhBtDCkYYcH8vLd4
	6JeBN4rtHV4CMhjlpkx9zYhhGW1f8qceWcv9kQh/n0qqMzBSKu52FDA95n/UKB5aKldQmR/GTMpSI
	EKJYv7F/BZmJb3yWitIIAnl6M1wLCu+ozSVTaKU6uLyx2wLbJJ3UXpOkRbxpjORBFoBJvFPbjrhl6
	aSD955FSDUi/gMhCi9Ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkoMx-00EWEB-U9; Sat, 30 Apr 2022 14:46:47 +0000
Received: from mail-yb1-xb29.google.com ([2607:f8b0:4864:20::b29])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkoMv-00EWDl-2E; Sat, 30 Apr 2022 14:46:46 +0000
Received: by mail-yb1-xb29.google.com with SMTP id w17so19180202ybh.9;
 Sat, 30 Apr 2022 07:46:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UDYTvI6znr01rMdYpkDq6Ypp0H3WErEbHLUo/gJSeUU=;
 b=gizhXjlc4dddGAyXHCWUzeJ2Gi8/5XiA/tllzFIGgLQLafptQfYoOodtweAYj0rvze
 UGRH4LGXjIdFMmtdfuO0xctNhDVa6ekPvB+sXgVvL1LQ1vHncJXqKSWZa4hxPWa7n4wh
 sfqBSFbOQQTcFmeRztpT42/kcsStIAFO/NTPd2e5zRjDTTqdY+gH2Kb4M9P1Mxl5uEen
 gl2fooV8ozixScBRzt4R7vrP8B2L21cfyCLKq0fDAROsZhYVJ+oMMKi++ZiR8tCm/LPO
 4qjxN5RCUri22u42lcBPBTTwyLuj5ReqZzMaCONCqDXaGz6xNxfBLmiWT3pABclT3ITy
 eiqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UDYTvI6znr01rMdYpkDq6Ypp0H3WErEbHLUo/gJSeUU=;
 b=eux1So3zpdbF3Gkq6YjI3eOP0z6YJTd7p3KHTd0D0WFH99LQz6LYl4qtBCF+0qD6+G
 LcIfba0sjEsJROTSQoMrlcF8qFub2MQJcKNkMzChEwWBi7D/mgslpLKXwh0T98ybwehg
 PyY4SUN5Clh0DzXvaERibEbMJwVEzDHm7kGANCDfb5WmKPdgAGMpczndREfkyGF9V7cX
 4rx7knc74MCxGElOP+XVciFqaQBX1ZM5sqWkNfJJxB09kMnkwvumnX+0JTIuvNosRGOj
 3OLpXKNFAPO7eqVXpwGSJTVLCMY2t7WglomCB5hMK5TTaIrC0tU2doV1bt4GqDgA0aN5
 RqSw==
X-Gm-Message-State: AOAM5331w+Jllundp/iaFe/6KNOwr//PGSmWHjSu4VZP9dOjWPkSR+Vq
 /t6b3Thn3oRqx4U0HQOC0z01RjYCJAbE8hbd3tQ=
X-Google-Smtp-Source: ABdhPJwjjBnxPwFO1b856aj8QWPk0F9kl/t1qCkPl+APt841wQfOimBoRG8A9Q9/kWZxIcl4i5IH+KuoR7LSGuIZ3lA=
X-Received: by 2002:a05:6902:cf:b0:641:32bb:53fc with SMTP id
 i15-20020a05690200cf00b0064132bb53fcmr4141174ybs.232.1651330002683; Sat, 30
 Apr 2022 07:46:42 -0700 (PDT)
MIME-Version: 1.0
References: <20220429115252.2360496-6-pgwipeout@gmail.com>
 <202204300850.X97CRcO6-lkp@intel.com>
In-Reply-To: <202204300850.X97CRcO6-lkp@intel.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Sat, 30 Apr 2022 10:46:31 -0400
Message-ID: <CAMdYzYoBgeTthb8-uycis+BPDmSC5OGVHz2doKYLeh3OY1m_vQ@mail.gmail.com>
Subject: Re: [PATCH v2 5/7] arm64: dts: rockchip: add Pine64 Quartz64-B device
 tree
To: kernel test robot <lkp@intel.com>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 llvm@lists.linux.dev, 
 kbuild-all@lists.01.org, devicetree <devicetree@vger.kernel.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220430_074645_165849_AD3D5E67 
X-CRM114-Status: GOOD (  19.05  )
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

On Fri, Apr 29, 2022 at 8:17 PM kernel test robot <lkp@intel.com> wrote:
>
> Hi Peter,
>
> I love your patch! Yet something to improve:
>
> [auto build test ERROR on robh/for-next]
> [also build test ERROR on arm/for-next arm64/for-next/core clk/clk-next kvmarm/next shawnguo/for-next soc/for-next v5.18-rc4]
> [cannot apply to rockchip/for-next xilinx-xlnx/master keystone/next next-20220429]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]

The three new device trees are dependent on my usb series which was
accepted through Heiko's tree.
I can drop the xhci dependency, but this will just happen again adding
it back in if it's done in this RC series.

>
> url:    https://github.com/intel-lab-lkp/linux/commits/Peter-Geis/Add-support-for-several-new-rk3566-SBCs/20220429-195433
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
> config: arm64-randconfig-r021-20220428 (https://download.01.org/0day-ci/archive/20220430/202204300850.X97CRcO6-lkp@intel.com/config)
> compiler: clang version 15.0.0 (https://github.com/llvm/llvm-project 400775649969b9baf3bc2a510266e7912bb16ae9)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # https://github.com/intel-lab-lkp/linux/commit/d933bfeea016da20a99bce012bbf071f9d86e2bf
>         git remote add linux-review https://github.com/intel-lab-lkp/linux
>         git fetch --no-tags linux-review Peter-Geis/Add-support-for-several-new-rk3566-SBCs/20220429-195433
>         git checkout d933bfeea016da20a99bce012bbf071f9d86e2bf
>         # save the config file
>         mkdir build_dir && cp config build_dir/.config
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=arm64 SHELL=/bin/bash
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
> >> Error: arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts:601.1-16 Label or path usb_host0_xhci not found
> >> Error: arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts:605.1-16 Label or path usb_host1_xhci not found
>    FATAL ERROR: Syntax error parsing input tree
>
> --
> 0-DAY CI Kernel Test Service
> https://01.org/lkp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
