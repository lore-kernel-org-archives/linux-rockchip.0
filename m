Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D942C71135
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Jun 2025 08:54:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wsKfHfrDlUev+AsSeROoZ+jGAsaOsrQDxKZeAtymiO8=; b=eovLRU4vtgXR8u
	aFIZcRrqLye4FGr3gh0VDmNY56Yfh68qn6l0MfQJN5XXtKm2MeFUGORyos5SqfDFcgybxsiqgDQVu
	NCwU+Qknd/WDLsPLkzN8tLVD9AfOJ9h+5BRpFkjp0OGw1vWtvxsFxr48huPZbFTENWKp0TilW325h
	4og9w+RRh4ZGLDiwv/mAWnOfgDDdvf+3FSxbj/ta01Ms2PeVpycOk94uW2nO8pKa+XE6uBOU9w94y
	S6hfq1u1zilzRoGl4tgL2nAmIQ7Wta4TYN90dpYjwG3w/RrdxedfL6gdZqIY4Z+m7EUIECzyNAozl
	FQvOPD2fOjx/v47yUbGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ0Aj-0000000FozX-0VJG;
	Fri, 13 Jun 2025 08:54:01 +0000
Received: from mgamail.intel.com ([198.175.65.9])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ08S-0000000FoYF-21Ea;
	Fri, 13 Jun 2025 08:51:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1749804700; x=1781340700;
  h=from:to:cc:subject:in-reply-to:references:date:
   message-id:mime-version;
  bh=4dvU2gjTBAobluxvnHDFcItktqR+5ChasN0aGjgKaKI=;
  b=JDwmCjL7h765qAo1Y/8XgZFufTHuz6y4SJwNaIjvxyMelImqJY9a2vVR
   IkjM3rz/YOI2ygi6Kbk9q3wzbbTU9ilGFFdu6IeTrSQX0Wmkuah7WamNO
   QmtZ/LRlzuLbpywXYtphkUCsV3eUXospWGmR6qhhNXLmPjwVG9Aq8j2fC
   3rvmPIJuUu+IbeL6BGS8sEYuZdkBI/t4BmRY59z6KDqzeRDDtumNKat1z
   pYWpGeDxEJXOQlxwmV7zX0OtCdKACIjA2DFV4m1v/2YREkCwIbss2NWw/
   vrJSyCPke5F9Cqd7f2P+uTTUsMMJoD+eEKBeEvxa2j0Hdt+EP0fIoQ66f
   A==;
X-CSE-ConnectionGUID: nhZVW/deQVWz1FI/QF+yeg==
X-CSE-MsgGUID: dP8Ze4uDSROlBiCezNA2HQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="74547608"
X-IronPort-AV: E=Sophos;i="6.16,233,1744095600"; 
   d="scan'208";a="74547608"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Jun 2025 01:51:37 -0700
X-CSE-ConnectionGUID: agVmFPqcQfiQWHXPtV8Rmw==
X-CSE-MsgGUID: gWFTP0HTRC2RODcDIuxKFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,233,1744095600"; 
   d="scan'208";a="147619241"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.246.26])
  by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Jun 2025 01:51:19 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, Yury Norov
 <yury.norov@gmail.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Jaehoon Chung <jh80.chung@samsung.com>, Ulf Hansson
 <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>, Shreeya Patel
 <shreeya.patel@collabora.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David
 Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Nicolas
 Frattaroli <frattaroli.nicolas@gmail.com>, Liam Girdwood
 <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Jaroslav Kysela
 <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo
 Abeni <pabeni@redhat.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>, Shawn Lin
 <shawn.lin@rock-chips.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Manivannan
 Sadhasivam
 <mani@kernel.org>, Rob Herring <robh@kernel.org>, Bjorn Helgaas
 <bhelgaas@google.com>, Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham
 <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>, Qin
 Jian <qinjian@cqplus1.com>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>, Bill Wendling
 <morbo@google.com>, Justin Stitt <justinstitt@google.com>
Subject: Re: [PATCH 01/20] bitfield: introduce HWORD_UPDATE bitfield macros
In-Reply-To: <20250612-byeword-update-v1-1-f4afb8f6313f@collabora.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250612-byeword-update-v1-0-f4afb8f6313f@collabora.com>
 <20250612-byeword-update-v1-1-f4afb8f6313f@collabora.com>
Date: Fri, 13 Jun 2025 11:51:15 +0300
Message-ID: <5493fd6017de3f393f632125fad95945d1c4294c@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250613_015140_575748_612011E0 
X-CRM114-Status: GOOD (  27.20  )
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
Cc: Tvrtko Ursulin <tursulin@igalia.com>, linux-pm@vger.kernel.org, netdev@vger.kernel.org, llvm@lists.linux.dev, linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org, linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, kernel@collabora.com, linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, 12 Jun 2025, Nicolas Frattaroli <nicolas.frattaroli@collabora.com> wrote:
> Hardware of various vendors, but very notably Rockchip, often uses
> 32-bit registers where the upper 16-bit half of the register is a
> write-enable mask for the lower half.
>
> This type of hardware setup allows for more granular concurrent register
> write access.
>
> Over the years, many drivers have hand-rolled their own version of this
> macro, usually without any checks, often called something like
> HIWORD_UPDATE or FIELD_PREP_HIWORD, commonly with slightly different
> semantics between them.
>
> Clearly there is a demand for such a macro, and thus the demand should
> be satisfied in a common header file.
>
> Add two macros: HWORD_UPDATE, and HWORD_UPDATE_CONST. The latter is a
> version that can be used in initializers, like FIELD_PREP_CONST. The
> macro names are chosen to not clash with any potential other macros that
> drivers may already have implemented themselves, while retaining a
> familiar name.
>
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---
>  include/linux/bitfield.h | 47 +++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 47 insertions(+)
>
> diff --git a/include/linux/bitfield.h b/include/linux/bitfield.h
> index 6d9a53db54b66c0833973c880444bd289d9667b1..b90d88db7405f95b78cdd6f3426263086bab5aa6 100644
> --- a/include/linux/bitfield.h
> +++ b/include/linux/bitfield.h
> @@ -8,6 +8,7 @@
>  #define _LINUX_BITFIELD_H
>  
>  #include <linux/build_bug.h>
> +#include <linux/limits.h>
>  #include <linux/typecheck.h>
>  #include <asm/byteorder.h>
>  
> @@ -142,6 +143,52 @@
>  		(((typeof(_mask))(_val) << __bf_shf(_mask)) & (_mask))	\
>  	)
>  
> +/**
> + * HWORD_UPDATE() - prepare a bitfield element with a mask in the upper half
> + * @_mask: shifted mask defining the field's length and position
> + * @_val:  value to put in the field
> + *
> + * HWORD_UPDATE() masks and shifts up the value, as well as bitwise ORs the
> + * result with the mask shifted up by 16.
> + *
> + * This is useful for a common design of hardware registers where the upper
> + * 16-bit half of a 32-bit register is used as a write-enable mask. In such a
> + * register, a bit in the lower half is only updated if the corresponding bit
> + * in the upper half is high.
> + */
> +#define HWORD_UPDATE(_mask, _val)					 \
> +	({								 \
> +		__BF_FIELD_CHECK(_mask, ((u16) 0U), _val,		 \
> +				 "HWORD_UPDATE: ");			 \
> +		(((typeof(_mask))(_val) << __bf_shf(_mask)) & (_mask)) | \
> +		((_mask) << 16);					 \
> +	})

i915 uses something like this for a few registers too, with the name
_MASKED_FIELD(). I think we could use it.

I do think this is clearly an extension of FIELD_PREP(), though, and
should be be named similarly, instead of the completely deviating
HWORD_UPDATE().

Also, we recently got GENMASK() versions with sizes, GENMASK_U16()
etc. so I find it inconsistent to denote size here with HWORD.

FIELD_PREP_MASKED_U16? MASKED_FIELD_PREP_U16? Something along those
lines?

And perhaps that (and more potential users) could persuade Jakub that
this is not that weird after all?


BR,
Jani.




> +
> +/**
> + * HWORD_UPDATE_CONST() - prepare a constant bitfield element with a mask in
> + *                        the upper half
> + * @_mask: shifted mask defining the field's length and position
> + * @_val:  value to put in the field
> + *
> + * HWORD_UPDATE_CONST() masks and shifts up the value, as well as bitwise ORs
> + * the result with the mask shifted up by 16.
> + *
> + * This is useful for a common design of hardware registers where the upper
> + * 16-bit half of a 32-bit register is used as a write-enable mask. In such a
> + * register, a bit in the lower half is only updated if the corresponding bit
> + * in the upper half is high.
> + *
> + * Unlike HWORD_UPDATE(), this is a constant expression and can therefore
> + * be used in initializers. Error checking is less comfortable for this
> + * version.
> + */
> +#define HWORD_UPDATE_CONST(_mask, _val)					  \
> +	(								  \
> +		FIELD_PREP_CONST(_mask, _val) |				  \
> +		(BUILD_BUG_ON_ZERO(const_true((u64) (_mask) > U16_MAX)) + \
> +		 ((_mask) << 16))					  \
> +	)
> +
>  /**
>   * FIELD_GET() - extract a bitfield element
>   * @_mask: shifted mask defining the field's length and position

-- 
Jani Nikula, Intel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
