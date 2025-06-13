Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 219E6C71136
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Jun 2025 12:28:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i8rYRpLnmTHxzBU4d4WDhbxDf+BXm9jUHv7tYSCARt4=; b=Ytww65ef7HQiA+
	67mZXaZ9BVqqMf7G9O2QpP7f0YTszz3i3fDoS+FUngM8DmL+MshtzeDKr9osFHbSXSaQG2kYT7ltW
	POgnKDta0Hy8VWFVP2eiYQme04fbYZNIz0SUUpjq33DN4jd4KhDxG/6ryRLeGfX8Ih2MeaQhguhgi
	eGzmjK0MZOF12ixmWSSRxWTnsX2+mx3aYSga8EWsxfXGI5b7mjtH5lu6P7RLfc7Hw3J2k6meo/B2s
	cIpiUdSpOhs+ttKE8pj7IQ5ZLXZyA4/lgIZnwIDkeIFfS15RyrF/mgZxIbtk3IHOwpMwDlYbsUu8z
	t8BUYrVjnypPKP4Il6EQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ3Wa-0000000GMsn-2Qo6;
	Fri, 13 Jun 2025 12:28:48 +0000
Received: from mail-pf1-x433.google.com ([2607:f8b0:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ3WX-0000000GMs9-3o4D;
	Fri, 13 Jun 2025 12:28:47 +0000
Received: by mail-pf1-x433.google.com with SMTP id d2e1a72fcca58-748435ce7cdso1885226b3a.1;
        Fri, 13 Jun 2025 05:28:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749817725; x=1750422525; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hUheJAvJ/QAI2j1ArBPoXkPiiSX0R8DUeLQ8vjaGCHc=;
        b=EzKpeewysjOYxMRxPVxbq53tCahtyrhrv+1gY1SMKqqCWqf2XE6fwg1xefjOJm43qj
         oUBZThEfzij/4I/pk3JpQy5w7QqLSxpidKPLYig9q3adRiY/+2/SRmiEDUmflAySxO96
         HFxqzP+knno2YZaEUOCbMc79dnpk3EM3f63BWeQpm1L6T9F63DyGsz8p5XKK3+2BPBBg
         brcCEdDUxk+Os+7c3quY9EMCRnUcoMpIULSYE/+UKDQHGMVnWW/z5y/AEzaXiegqs+6s
         kIJ3tbBpm4flrMO3hLr6/X5T0dPNz5OFlCuUZvMDU+1KDhSeW1BMBoki7CCzgnbmxIBs
         hRGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749817725; x=1750422525;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hUheJAvJ/QAI2j1ArBPoXkPiiSX0R8DUeLQ8vjaGCHc=;
        b=gP9wBE32U2KHAgBtMbngZV7UiROwQaBbh7EmF+yHrTrAOkMm/QSqJcdWS3S741ge6N
         9ktPkMo7aJFXRTM9rRx3CEjOvmo4W9YkMci2dfZMsdCfBhajLmWAhPICsAL2UgHMCWFu
         JF2yTTKd657I6QBheoB6UqFQ9gfiiVC4hX5m3Lw5dP05OdfJtnU3DoY0DDSM7p6nMS3r
         7uhY/S4IU/iBdO5Zhnt//2EI0d2sRG+xu54Mn1fwcRDKTIM+YmcUBjywHjRWV8bYGErg
         L5kROaDQ1WK5AY4CeVyJdAoSR8EtEBHHzj4ps4syM/3jSd9+aHG+FuBaHxtsuMEn5Bb1
         BAIg==
X-Forwarded-Encrypted: i=1; AJvYcCVyvvnVp9ZQ5dt6GCZvTpWdGK/cROh24bwJ9C9CdGFgaqcD2wWnpeAWMO9ijx8dMoMcFv4uqxpWvogHK1NBavE=@lists.infradead.org, AJvYcCWCsqXcxsdNNZp+Q7VIBwNXZEclvau6iMzxtzErvNiu9mqtp6vY81qPRKAU4wxhaPqP+UuPz/x72kthttc53P0K@lists.infradead.org, AJvYcCWsvI+YvINoG7bxNx2wNN6ywEA1eJ8PDwrE+vi63sW28fiaPX2EEoS5pKMmjYd4WDXkCx96mPMqI5h3@lists.infradead.org
X-Gm-Message-State: AOJu0YwHIu4dc8WbnotjvEt6mYKe7cAJSPph0Zr8oxc0B9K0JwsR7LY3
	qcvt8kJhiE8C3NYtOIfaSYtdHdZV4bmZkXOK+VoOh5kcHN+TvUlMYP05
X-Gm-Gg: ASbGncufMpzForSrOL74aQik5nVqh+aZ3LGdhf0ymaxkOzgmjA8MRD8wfwkWktdqCZj
	Cl7lT+l/rNwqIv+iDiffSljmb1/goIdfv8VoEHbEpMgEqI9hHSo35VPEfeLUeW6AYvPwozaXfxd
	f89tMoz6NKS+ssZVY4v/7RAP3SgRlxQkiBZha4ZSF43P23q/sA173Sn6VRQmVXp8fXdcUUNYv+9
	dL70Q2E0S8h4lNmsUKDBeovw8IHKSNGn6iANQuVTCKxkAXoPlDgkRrKpWSpMsjCbLrekdjX/Ne/
	UMe+qy9+L1cVRPhag5Esl02moTNrEQAgS0te5Ei21QC5qc0r2fYTzx64CP9ksw==
X-Google-Smtp-Source: AGHT+IE+gcmD/PmavjTCsZJ5Ebw+bwtrBwmaH3AIBOuyUnFsBAjlI4hGAFjqzUYV1uUOPvmBym85Fw==
X-Received: by 2002:a05:6a20:9151:b0:1fa:9819:c0a5 with SMTP id adf61e73a8af0-21facbb40c3mr4162006637.11.1749817724606;
        Fri, 13 Jun 2025 05:28:44 -0700 (PDT)
Received: from localhost ([216.228.127.129])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b2fe1644c92sm1565073a12.32.2025.06.13.05.28.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jun 2025 05:28:44 -0700 (PDT)
Date: Fri, 13 Jun 2025 08:28:40 -0400
From: Yury Norov <yury.norov@gmail.com>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Jaehoon Chung <jh80.chung@samsung.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shreeya Patel <shreeya.patel@collabora.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	Qin Jian <qinjian@cqplus1.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
	Bill Wendling <morbo@google.com>,
	Justin Stitt <justinstitt@google.com>,
	Jani Nikula <jani.nikula@linux.intel.com>, kernel@collabora.com,
	linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org,
	linux-sound@vger.kernel.org, netdev@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com, linux-pci@vger.kernel.org,
	linux-pm@vger.kernel.org, linux-clk@vger.kernel.org,
	llvm@lists.linux.dev, Tvrtko Ursulin <tursulin@igalia.com>
Subject: Re: [PATCH 01/20] bitfield: introduce HWORD_UPDATE bitfield macros
Message-ID: <aEwZcM_leVvB0Cju@yury>
References: <20250612-byeword-update-v1-0-f4afb8f6313f@collabora.com>
 <20250612-byeword-update-v1-1-f4afb8f6313f@collabora.com>
 <5493fd6017de3f393f632125fad95945d1c4294c@intel.com>
 <3683577.irdbgypaU6@workhorse>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3683577.irdbgypaU6@workhorse>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250613_052845_948110_C77F5653 
X-CRM114-Status: GOOD (  45.03  )
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

On Fri, Jun 13, 2025 at 01:55:54PM +0200, Nicolas Frattaroli wrote:
> Hello,
> 
> On Friday, 13 June 2025 10:51:15 Central European Summer Time Jani Nikula wrote:
> > On Thu, 12 Jun 2025, Nicolas Frattaroli <nicolas.frattaroli@collabora.com> wrote:
> > > Hardware of various vendors, but very notably Rockchip, often uses
> > > 32-bit registers where the upper 16-bit half of the register is a
> > > write-enable mask for the lower half.
> > >
> > > This type of hardware setup allows for more granular concurrent register
> > > write access.
> > >
> > > Over the years, many drivers have hand-rolled their own version of this
> > > macro, usually without any checks, often called something like
> > > HIWORD_UPDATE or FIELD_PREP_HIWORD, commonly with slightly different
> > > semantics between them.
> > >
> > > Clearly there is a demand for such a macro, and thus the demand should
> > > be satisfied in a common header file.
> > >
> > > Add two macros: HWORD_UPDATE, and HWORD_UPDATE_CONST. The latter is a
> > > version that can be used in initializers, like FIELD_PREP_CONST. The
> > > macro names are chosen to not clash with any potential other macros that
> > > drivers may already have implemented themselves, while retaining a
> > > familiar name.
> > >
> > > Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> > > ---
> > >  include/linux/bitfield.h | 47 +++++++++++++++++++++++++++++++++++++++++++++++
> > >  1 file changed, 47 insertions(+)
> > >
> > > diff --git a/include/linux/bitfield.h b/include/linux/bitfield.h
> > > index 6d9a53db54b66c0833973c880444bd289d9667b1..b90d88db7405f95b78cdd6f3426263086bab5aa6 100644
> > > --- a/include/linux/bitfield.h
> > > +++ b/include/linux/bitfield.h
> > > @@ -8,6 +8,7 @@
> > >  #define _LINUX_BITFIELD_H
> > >  
> > >  #include <linux/build_bug.h>
> > > +#include <linux/limits.h>
> > >  #include <linux/typecheck.h>
> > >  #include <asm/byteorder.h>
> > >  
> > > @@ -142,6 +143,52 @@
> > >  		(((typeof(_mask))(_val) << __bf_shf(_mask)) & (_mask))	\
> > >  	)
> > >  
> > > +/**
> > > + * HWORD_UPDATE() - prepare a bitfield element with a mask in the upper half
> > > + * @_mask: shifted mask defining the field's length and position
> > > + * @_val:  value to put in the field
> > > + *
> > > + * HWORD_UPDATE() masks and shifts up the value, as well as bitwise ORs the
> > > + * result with the mask shifted up by 16.
> > > + *
> > > + * This is useful for a common design of hardware registers where the upper
> > > + * 16-bit half of a 32-bit register is used as a write-enable mask. In such a
> > > + * register, a bit in the lower half is only updated if the corresponding bit
> > > + * in the upper half is high.
> > > + */
> > > +#define HWORD_UPDATE(_mask, _val)					 \
> > > +	({								 \
> > > +		__BF_FIELD_CHECK(_mask, ((u16) 0U), _val,		 \
> > > +				 "HWORD_UPDATE: ");			 \
> > > +		(((typeof(_mask))(_val) << __bf_shf(_mask)) & (_mask)) | \
> > > +		((_mask) << 16);					 \
> > > +	})
> > 
> > i915 uses something like this for a few registers too, with the name
> > _MASKED_FIELD(). I think we could use it.
> > 
> > I do think this is clearly an extension of FIELD_PREP(), though, and
> > should be be named similarly, instead of the completely deviating
> > HWORD_UPDATE().
> > 
> > Also, we recently got GENMASK() versions with sizes, GENMASK_U16()
> > etc. so I find it inconsistent to denote size here with HWORD.
> > 
> > FIELD_PREP_MASKED_U16? MASKED_FIELD_PREP_U16? Something along those
> > lines?
> 
> Yeah, I agree the name could be better. I used HWORD_UPDATE as Yury and
> I couldn't come up with a name we liked either, and Yury suggested not
> breaking from what's already there too much. I do think making the name
> more field-adjacent would be good though, as well as somehow indicating
> that it is 16 bits of data.
 
I suggested a wonderful name that explains everything. Didn't I? It
has the only problem - it's 25 chars long. :)

So yeah, let's think once more about a better _short_ name, or just
stick to the existing naming scheme.

> > And perhaps that (and more potential users) could persuade Jakub that
> > this is not that weird after all?
> 
> I will operate under the assumption that Jakub's opinion will not change
> as he ignored the commit message that talks about multiple vendors,
> ignored the cover letter that talks about multiple vendors, and ignored
> my e-mail where I once again made it clear to him that it's multiple
> vendors, and still claims it's a Rockchip specific convention.

As far as I understood, he concerns not about number of drivers that
opencode HIWORD_UPDATE(), but that this macro is not generic enough
to live in bitfield.h. And it's a valid concern - I doubt it will
be helpful somewhere in core and arch files.

I think that creating a separate header like hw_bitfield.h, or hw_bits.h
aimed to absorb common helpers of that sort, would help to reach the
strategic goal - decreasing the level of code duplication in the driver
swamp.

Thanks,
Yury

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
