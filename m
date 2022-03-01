Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7CC7C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Mar 2022 04:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wfH0+qZKLbrxCVMbDwZLHSxVzDTEuaNbhVaYbQXt8Cg=; b=1560MEAQ8YfE3T
	ZTYWInhvJX0S0R/jLw2rkEPDDlD5H/KHb/G2emztWe1VgIQdofcwx5XRvSapSIEi/EIIOX60+xmDH
	RBoJHPQdp1HKjL1grDkMjRHKkF/ubadFYCVHm7xT+HNUXSGr5jfypDZge4lqZaywlZQkBKLeZEMcG
	Dff86EhJwZwMqbuNRtdQDyH/AN0cTzIVf54G4wDYmY6m5SjA8RXLQrW4VsphKXWrCNHaPFO9Yqnjg
	idMXBUz4qgyu8XpxmDcR6RlEOHwK/iWW6V2vZjXjUSGvVLQZ4RZXgA7qEw2mRM1H8CT8vF1XKQKVg
	5tkskAXw7ZWCUL7ExYSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOtzY-00ErKP-IY; Tue, 01 Mar 2022 04:20:04 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOtzL-00ErDy-Hl; Tue, 01 Mar 2022 04:19:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646108391; x=1677644391;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=OdBHJiSxsaP3KdGJd9Gtst2fhK8G33ye+cSYy98JHtg=;
 b=HWrE5vIIaDvKp/umdgxBN1tjZv/3yzNbu/Ry2kvfHlZjPJt5pyB7iDYN
 yRwiYtdc3f8Gto9AWABTR7R+CfJAmJkABU+dsoGzYii4RQ7Y/zYugWtwG
 KV5EXaOusFWWhboU4bflXpUWqdTIORafAMmBlia2DmdSYUrtiKQ5kp1rk
 dZGd1xOj97CLhAEXoVn8MSMjHx1uvBMhKJl+h4M2IwbwkQ7oK5RGCHNe6
 Rfgd3DImXIqMm0UV3sfTHTk+LDvDBYXravdPRf7U337kR3/VDES50KJis
 G2KqrXpfQX22Eg0s0lfMTZ4is2XqS1d9xnbwP4jRRH1P8j7kNzc+BM/Q4 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10272"; a="316267201"
X-IronPort-AV: E=Sophos;i="5.90,144,1643702400"; d="scan'208";a="316267201"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2022 20:19:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,144,1643702400"; d="scan'208";a="593466286"
Received: from lkp-server01.sh.intel.com (HELO 788b1cd46f0d) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 28 Feb 2022 20:19:47 -0800
Received: from kbuild by 788b1cd46f0d with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nOtzG-00086a-M5; Tue, 01 Mar 2022 04:19:46 +0000
Date: Tue, 1 Mar 2022 12:18:43 +0800
From: kernel test robot <lkp@intel.com>
To: Corentin Labbe <clabbe@baylibre.com>, heiko@sntech.de,
 herbert@gondor.apana.org.au, krzysztof.kozlowski@canonical.com,
 robh+dt@kernel.org
Cc: llvm@lists.linux.dev, kbuild-all@lists.01.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: Re: [PATCH 13/16] crypto: rockchip: rewrite type
Message-ID: <202203011017.qqb0tTar-lkp@intel.com>
References: <20220228194037.1600509-14-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220228194037.1600509-14-clabbe@baylibre.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_201951_659558_FE84081C 
X-CRM114-Status: GOOD (  14.76  )
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

Hi Corentin,

I love your patch! Perhaps something to improve:

[auto build test WARNING on rockchip/for-next]
[also build test WARNING on herbert-cryptodev-2.6/master herbert-crypto-2.6/master v5.17-rc6 next-20220228]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Corentin-Labbe/crypto-rockchip-permit-to-pass-self-tests/20220301-035430
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git for-next
config: arm64-randconfig-r006-20220228 (https://download.01.org/0day-ci/archive/20220301/202203011017.qqb0tTar-lkp@intel.com/config)
compiler: clang version 15.0.0 (https://github.com/llvm/llvm-project d271fc04d5b97b12e6b797c6067d3c96a8d7470e)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # https://github.com/0day-ci/linux/commit/03fb353165f76dc7c5ed7c27401537552070406b
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Corentin-Labbe/crypto-rockchip-permit-to-pass-self-tests/20220301-035430
        git checkout 03fb353165f76dc7c5ed7c27401537552070406b
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=arm64 SHELL=/bin/bash drivers/crypto/rockchip/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/crypto/rockchip/rk3288_crypto.c:101:6: warning: data argument not used by format string [-Wformat-extra-args]
                                    rk_cipher_algs[i]->alg.skcipher.base.cra_driver_name);
                                    ^
   include/linux/dev_printk.h:150:67: note: expanded from macro 'dev_info'
           dev_printk_index_wrap(_dev_info, KERN_INFO, dev, dev_fmt(fmt), ##__VA_ARGS__)
                                                                    ~~~     ^
   include/linux/dev_printk.h:110:23: note: expanded from macro 'dev_printk_index_wrap'
                   _p_func(dev, fmt, ##__VA_ARGS__);                       \
                                ~~~    ^
   1 warning generated.


vim +101 drivers/crypto/rockchip/rk3288_crypto.c

    89	
    90	static int rk_crypto_register(struct rk_crypto_info *crypto_info)
    91	{
    92		unsigned int i, k;
    93		int err = 0;
    94	
    95		for (i = 0; i < ARRAY_SIZE(rk_cipher_algs); i++) {
    96			rk_cipher_algs[i]->dev = crypto_info;
    97			switch (rk_cipher_algs[i]->type) {
    98			case CRYPTO_ALG_TYPE_SKCIPHER:
    99				dev_info(crypto_info->dev, "Register %s as\n",
   100					 rk_cipher_algs[i]->alg.skcipher.base.cra_name,
 > 101					 rk_cipher_algs[i]->alg.skcipher.base.cra_driver_name);
   102				err = crypto_register_skcipher(&rk_cipher_algs[i]->alg.skcipher);
   103				break;
   104			case CRYPTO_ALG_TYPE_AHASH:
   105				dev_info(crypto_info->dev, "Register %s as %s\n",
   106					 rk_cipher_algs[i]->alg.hash.halg.base.cra_name,
   107					 rk_cipher_algs[i]->alg.hash.halg.base.cra_driver_name);
   108				err = crypto_register_ahash(&rk_cipher_algs[i]->alg.hash);
   109				break;
   110			default:
   111				dev_err(crypto_info->dev, "unknown algorithm\n");
   112			}
   113			if (err)
   114				goto err_cipher_algs;
   115		}
   116		return 0;
   117	
   118	err_cipher_algs:
   119		for (k = 0; k < i; k++) {
   120			if (rk_cipher_algs[i]->type == CRYPTO_ALG_TYPE_SKCIPHER)
   121				crypto_unregister_skcipher(&rk_cipher_algs[k]->alg.skcipher);
   122			else
   123				crypto_unregister_ahash(&rk_cipher_algs[i]->alg.hash);
   124		}
   125		return err;
   126	}
   127	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
