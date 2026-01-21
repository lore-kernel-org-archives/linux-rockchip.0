Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5762EC44508
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Jan 2026 23:04:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I2yTGeM+/Xld1dXFk2Rxq7M9uoHAtGed4n+T84vz6L4=; b=4zS3soGMGNCxaE
	q5qryIYFHiMnlqfpEuKS1rEyjdARyoXjsWlPUvPZsEhwbZyIDPMV8oN2ljCuitdBbGkHld4OitwGL
	aiENgELAwuF0QkiA2R9Hr36HFCR6Nf7FZmqt9ZpNog70YP852j7PgUk2L8YJHh5ZsCZqZypuA5FeO
	WabOjOG3GrnfIWCmdaNh+pmL+bkKU3zyljbJZKQzP3ycH1XLQyzO8rXCxcATG2pyps5pMPnuZUdXp
	OCwSjC5Hx9KfttsuWyhh7G+5+KIHDCQ+qL0sE3RlVPQ8bZ0y3D1ybZMpMkW2yPjnly19BdG5qB++W
	L7xNQFy/6GFQ52Ee/ONg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vihFJ-000000068pW-14GR;
	Wed, 21 Jan 2026 23:04:17 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vihFH-000000068pD-1N84;
	Wed, 21 Jan 2026 23:04:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 3751B600C3;
	Wed, 21 Jan 2026 23:04:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A4FEC4CEF1;
	Wed, 21 Jan 2026 23:04:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769036653;
	bh=bicMi5K8e0B0bp9gSrJTYl5RYIvmgDkMATFB4TZCQLA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FHfQJHddac0k4J6Tc/1P7oFnqeTw3s9eyMEiKLF6XhkkXbmW3Am0ReKC9DLA6UVwb
	 z/QZjN54GV79pn6NpBuVcSJRqUq6whka+8q9xpqyJeerFnATA6lA5PcrLhEZegM178
	 53+7d2yvbafoYE7uwLRwI/hKY+NH7aRYe5OvPHyO5d476sXqwdnBagVGa3v1ztCm4y
	 HAN5SBcNDpFac+VWxA7Rmkk04B8dqLxs2pzZWIfvRB1Y+y6dnwshyyFkPoPC899qkC
	 iDUSaK4MHkOhqsMacAdTfcNURN6kJiKS//ev5JXi4zNkFkLF8BCUNTr6bQAoxBZtiv
	 yWBzc8CgzpeAw==
Date: Wed, 21 Jan 2026 16:04:06 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: kernel test robot <lkp@intel.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	linux-kernel@vger.kernel.org, llvm@lists.linux.dev,
	oe-kbuild-all@lists.linux.dev,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Heiko Stuebner <heiko@sntech.de>,
	Daniel Almeida <daniel.almeida@collabora.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Ricardo Ribalda <ribalda@chromium.org>,
	Hans Verkuil <hverkuil@xs4all.nl>, Yunke Cao <yunkec@google.com>,
	Hans de Goede <hansg@kernel.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Pavan Bobba <opensource206@gmail.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	James Cowgill <james.cowgill@blaize.com>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, kernel@collabora.com,
	Jonas Karlman <jonas@kwiboo.se>,
	Diederik de Haas <didi.debian@cknow.org>
Subject: Re: [PATCH v9 15/17] media: rkvdec: Add H264 support for the VDPU383
 variant
Message-ID: <20260121230406.GA2625738@ax162>
References: <20260120222018.404741-16-detlev.casanova@collabora.com>
 <202601211924.rqKS2Ihm-lkp@intel.com>
 <69fda4f0136285e4d2f86e7e93d5bdd812c1d47a.camel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <69fda4f0136285e4d2f86e7e93d5bdd812c1d47a.camel@collabora.com>
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

On Wed, Jan 21, 2026 at 09:46:48AM -0500, Nicolas Dufresne wrote:
> Le mercredi 21 janvier 2026 =E0 22:27 +0800, kernel test robot a =E9crit=
=A0:
> > Hi Detlev,
> > =

> > kernel test robot noticed the following build warnings:
> > =

> > [auto build test WARNING on rockchip/for-next]
> > [also build test WARNING on linuxtv-media-pending/master media-tree/mas=
ter linus/master v6.19-rc6 next-20260120]
> > [If your patch is applied to the wrong git tree, kindly drop us a note.
> > And when submitting patch, we suggest to use '--base' as documented in
> > https://git-scm.com/docs/git-format-patch#_base_tree_information]
> > =

> > url:=A0=A0=A0 https://github.com/intel-lab-lkp/linux/commits/Detlev-Cas=
anova/media-uapi-HEVC-Add-v4l2_ctrl_hevc_ext_sps_-ls-t_rps-controls/2026012=
1-071026
> > base:=A0=A0 https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux=
-rockchip.git=A0for-next
> > patch link:=A0=A0=A0 https://lore.kernel.org/r/20260120222018.404741-16=
-detlev.casanova%40collabora.com
> > patch subject: [PATCH v9 15/17] media: rkvdec: Add H264 support for the=
 VDPU383 variant
> > config: loongarch-allmodconfig (https://download.01.org/0day-ci/archive=
/20260121/202601211924.rqKS2Ihm-lkp@intel.com/config)
> > compiler: clang version 19.1.7 (https://github.com/llvm/llvm-project=A0=
cd708029e0b2869e80abe31ddb175f7c35361f90)
> =

> Modification has been done to reduce the stack utilization on clang, thou=
gh we
> believe we are hitting limitations/bugs on older clang. We went ahead wit=
h these
> patch by updating our CI to clang 21, which allocate a lot less stack wit=
h KASAN
> enabled and this code. Our general advise is to use a newer clang, or GCC=
 for
> testing with KASAN.
> =

> The stack utilization is caused by the combination of loop unrolling, agr=
essive
> inlining, and write operations to bitfield (which requires the compiler to
> generate more code for memory checks, since the writes are not aligned).

Yes, this is an area that has known pain points, even in current
versions (but it is certainly better in most cases):

https://github.com/llvm/llvm-project/issues/143908
https://github.com/llvm/llvm-project/issues/115862

Thank you for working around this.

Cheers,
Nathan

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
