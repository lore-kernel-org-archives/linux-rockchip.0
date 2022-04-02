Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B1D0C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Apr 2022 20:04:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d+8gVCF0x5mnjoNqGaL3iqWNNcYU5a8Wn2TdM8MArbY=; b=pUjTYvTr28e8Wc
	Gb/stb6xwMrp5LsDGkvESUmYduFz/KXSZRR2zfiYQx3tDZ8XfDsD3UrvLAZwQz3ZJdn14rHrh/VIH
	W9608uG97x9CUwmJty18Q/UCyr5OAuIO3F//N2WQmltieFBuBabiSi9wzIcjRqqiI2EYNDbEmPTX8
	lwHFqUfSrAIojrpemwN4cRKBUyQn0EODLUtb/aPWo1QY4FjPmcUf9z7EkjkEZKz+eJVx19rVmYw/s
	4qSUVMXeKgnczOUVsGkHttGQApC5+gnS/82wS/a018jFTjqkB4PICWk91jbCELF8Am83cTJjzhrA6
	94gICUdsvWDGtgIb3B5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1najyu-009xI6-Mu; Sat, 02 Apr 2022 20:04:20 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1najyq-009xGw-Si
 for linux-rockchip@lists.infradead.org; Sat, 02 Apr 2022 20:04:19 +0000
Received: by mail-wm1-x32d.google.com with SMTP id
 c190-20020a1c35c7000000b0038e37907b5bso5427693wma.0
 for <linux-rockchip@lists.infradead.org>; Sat, 02 Apr 2022 13:04:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=yQeqwIeqI5CMAgG8hDfKbZn0Debf8w0vr8QNNYkJmUI=;
 b=rg468YkTGw4qq+7BTqNb+9e2AW7798nZyQsEw7APtpHfEScIn4mAxPp40epSJ/DqqM
 FW1ukFdIVMS8churmP06RZyQPTzPyQdeidOkNAX+hpVRYnSNHIas4ePrAYUdilNlEtP6
 yhnuvRTNyZSAysfMJPll2xZUF3wAuxL6zspWSXz5gwdt66ugNBr5eNsZNqbFT3zYWfIS
 xF11MED8ko9Bbk+x/u3f9nXO5nIl3PYMXVFAdWugobCvQR8MjCmx7qd9kQCp38gnhfrO
 fC+b2Ptuhb93WvKGvSwgJ6rFJy4o9pM7VSVPTbWuBDCRyrqbelhElQJYJEsZnujnWVO5
 McYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=yQeqwIeqI5CMAgG8hDfKbZn0Debf8w0vr8QNNYkJmUI=;
 b=FbPK/waC9u7inBZBlwXo0HZG3zWbBh0yWCgpiqGW4+4RC7nwgGZ70eLKTIDqz9AK8H
 nzqSiF+y6E/KJtySa0Lq9VHG2r3PlXs/Yq2NcqtU9ttsYdiKPXNk1fz4MSCQSegiJVBX
 aJtqc5IJdKulfl3ylKG0c+ZVWcNrcyNaVfqKrUXMtqibGrCkUknbKTCX49HrSpS/YjSa
 oI2Gw1k3A7VM4NOhrKvFFegbSD+SxNkuj2kCiZd39K5iYHcW2YXqtkY//JeUAno07nHQ
 DFRyHZouMfe4Og8les1B08iu9IadHHPoQvINdOk+FNk23BDyK+DlhPvtHVPrDl8C6LJU
 9mYg==
X-Gm-Message-State: AOAM532kiTkJdw0ZTxQJKX677kKX4jx9dc4Ol2SM+CQ+X3SSAMpaPFso
 rEkHXvGx31QD5jJAtDhGOfPblw==
X-Google-Smtp-Source: ABdhPJy6NaiDP7v3t/VgL9bpERiXPtZ6xlytZQf5riyEAwmfhgWKXXpEcvulkX/plHpsKoVk6W8Z4A==
X-Received: by 2002:a05:600c:5029:b0:38c:9768:b4c with SMTP id
 n41-20020a05600c502900b0038c97680b4cmr13117148wmr.123.1648929854661; 
 Sat, 02 Apr 2022 13:04:14 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id
 h10-20020a05600c144a00b0038ccc75a6adsm13008386wmi.37.2022.04.02.13.04.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 Apr 2022 13:04:13 -0700 (PDT)
Date: Sat, 2 Apr 2022 22:04:11 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: kernel test robot <lkp@intel.com>
Cc: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 robh+dt@kernel.org, llvm@lists.linux.dev, kbuild-all@lists.01.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 10/33] crypto: rockchip: rework by using crypto_engine
Message-ID: <YkisOxklZgCejfad@Red>
References: <20220401201804.2867154-11-clabbe@baylibre.com>
 <202204021634.IhyHrjoT-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202204021634.IhyHrjoT-lkp@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220402_130417_185977_6A575570 
X-CRM114-Status: GOOD (  18.13  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Le Sat, Apr 02, 2022 at 04:22:56PM +0800, kernel test robot a =E9crit :
> Hi Corentin,
> =

> I love your patch! Perhaps something to improve:
> =

> [auto build test WARNING on next-20220331]
> [also build test WARNING on v5.17]
> [cannot apply to rockchip/for-next herbert-cryptodev-2.6/master herbert-c=
rypto-2.6/master v5.17 v5.17-rc8 v5.17-rc7]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> =

> url:    https://github.com/intel-lab-lkp/linux/commits/Corentin-Labbe/cry=
pto-rockchip-permit-to-pass-self-tests/20220402-042221
> base:    fdcbcd1348f4ef713668bae1b0fa9774e1811205
> config: arm64-buildonly-randconfig-r001-20220402 (https://download.01.org=
/0day-ci/archive/20220402/202204021634.IhyHrjoT-lkp@intel.com/config)
> compiler: clang version 15.0.0 (https://github.com/llvm/llvm-project c4a1=
b07d0979e7ff20d7d541af666d822d66b566)
> reproduce (this is a W=3D1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbi=
n/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # https://github.com/intel-lab-lkp/linux/commit/be381eb03ba20a6e0=
6f0e880a9929d14a1e13064
>         git remote add linux-review https://github.com/intel-lab-lkp/linux
>         git fetch --no-tags linux-review Corentin-Labbe/crypto-rockchip-p=
ermit-to-pass-self-tests/20220402-042221
>         git checkout be381eb03ba20a6e06f0e880a9929d14a1e13064
>         # save the config file to linux build tree
>         mkdir build_dir
>         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross W=
=3D1 O=3Dbuild_dir ARCH=3Darm64 SHELL=3D/bin/bash drivers/crypto/rockchip/
> =

> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> =

> All warnings (new ones prefixed by >>):
> =

>    drivers/crypto/rockchip/rk3288_crypto_skcipher.c:21:46: error: use of =
undeclared identifier 'tfm'
>            unsigned int bs =3D crypto_skcipher_blocksize(tfm);
>                                                        ^
> >> drivers/crypto/rockchip/rk3288_crypto_skcipher.c:328:6: warning: varia=
ble 'n' set but not used [-Wunused-but-set-variable]
>            int n =3D 0;
>                ^
>    1 warning and 1 error generated.
> =


Argh, I didnt retry to compile this serie one patch by one.

Thanks, I will fix that in v5.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
