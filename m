Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A7DFC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Mar 2022 01:27:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aCzAa6ikK+tMMbdb9oUNQ/Hedz2kISAInMFpmr5rghs=; b=Yknf9P6qzMvIxJ
	+fZfB9pO7p6T4n+RjZggIcm/Nfhn/uSinmxORmy0H/APQR1CYbDYJtbYuMp6Ylg9bH+9LrwKFVptb
	Va5K89AfuZ02Aei9aPeNmAfOCPmzVh5rVCpCstkGkO/6e8Ac9u5WYzYYFJoFR+wpiq6ZvjQ95Kls2
	nxzfI/cffggWY6rlkjOsTd6eghwEQZ7+xlZyjJY1nrudJrRevmIP1ub9xovLcZHbA/lJ5JUOo9Aq7
	MhhCh7YW+1sZO+lWvX3x5NPtRUz1MG5guMfSt0ynJomJKphoCgjha1cXBspYwEDjrQ6y83/OVSuPI
	w5OdhYj8Rp0xP65rjBJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOrI2-00EaK8-Ch; Tue, 01 Mar 2022 01:26:58 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOrHp-00EaID-99; Tue, 01 Mar 2022 01:26:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646098005; x=1677634005;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=W0/EHxfz/6Tlchl0IZZvUXnUObXdh0ufI9V1QGUN19E=;
 b=luKwf+25icn7TKXxi+9X+uwHqR2Gr3e0udRk+2fgeqv8RufjJu8JAZ+e
 JltVJ2ls1o3o1FeqkDIkVXXmZ2suzZ9EyvYVHBUC7cUK/C4lzzBU1NKgw
 ZyWkDKKjjNMtUT6a/tNev4RDnTfDmEmScwmgPRBthyxWZ20USRCllC/sv
 38d8v7DjGpzPQqUYIwxZXInJCcZ+mgurxAxbYQYY409gL81jUl6caO5R6
 CBldyFRmYxGwQoAS2/xPztRWFesoP4vJisl9/bCka+ZGqb+KKAC9rYqIU
 tk4OhEm/5C0SdBP+3JXXFXZ9lx5ki49rqgG+EsaChZK5x3GJ8DKUCGx4M A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10272"; a="252957411"
X-IronPort-AV: E=Sophos;i="5.90,144,1643702400"; d="scan'208";a="252957411"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2022 17:26:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,144,1643702400"; d="scan'208";a="492931197"
Received: from lkp-server01.sh.intel.com (HELO 788b1cd46f0d) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 28 Feb 2022 17:26:40 -0800
Received: from kbuild by 788b1cd46f0d with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nOrHj-0007yk-Fs; Tue, 01 Mar 2022 01:26:39 +0000
Date: Tue, 1 Mar 2022 09:26:09 +0800
From: kernel test robot <lkp@intel.com>
To: Corentin Labbe <clabbe@baylibre.com>, heiko@sntech.de,
 herbert@gondor.apana.org.au, krzysztof.kozlowski@canonical.com,
 robh+dt@kernel.org
Cc: kbuild-all@lists.01.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Corentin Labbe <clabbe@baylibre.com>
Subject: Re: [PATCH 10/16] crypto: rockchip: rework by using crypto_engine
Message-ID: <202203010927.TpnG5TzB-lkp@intel.com>
References: <20220228194037.1600509-11-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220228194037.1600509-11-clabbe@baylibre.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_172645_414331_B20044B9 
X-CRM114-Status: GOOD (  17.96  )
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
config: arm-defconfig (https://download.01.org/0day-ci/archive/20220301/202203010927.TpnG5TzB-lkp@intel.com/config)
compiler: arm-linux-gnueabi-gcc (GCC) 11.2.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/7e5f8e4a5f09473643937e0ecff342bf336793fb
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Corentin-Labbe/crypto-rockchip-permit-to-pass-self-tests/20220301-035430
        git checkout 7e5f8e4a5f09473643937e0ecff342bf336793fb
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross O=build_dir ARCH=arm SHELL=/bin/bash drivers/crypto/rockchip/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from include/linux/device.h:15,
                    from drivers/crypto/rockchip/rk3288_crypto_skcipher.c:11:
   drivers/crypto/rockchip/rk3288_crypto_skcipher.c: In function 'rk_cipher_run':
>> drivers/crypto/rockchip/rk3288_crypto_skcipher.c:383:40: warning: format '%x' expects argument of type 'unsigned int', but argument 12 has type 'long unsigned int' [-Wformat=]
     383 |                 dev_dbg(ctx->dev->dev, "LEN=%d/%d/%u ivsize=%d mode=%x n=%d BI=%d todo=%u way=%x\n",
         |                                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/dev_printk.h:129:41: note: in definition of macro 'dev_printk'
     129 |                 _dev_printk(level, dev, fmt, ##__VA_ARGS__);            \
         |                                         ^~~
   include/linux/dev_printk.h:163:45: note: in expansion of macro 'dev_fmt'
     163 |                 dev_printk(KERN_DEBUG, dev, dev_fmt(fmt), ##__VA_ARGS__); \
         |                                             ^~~~~~~
   drivers/crypto/rockchip/rk3288_crypto_skcipher.c:383:17: note: in expansion of macro 'dev_dbg'
     383 |                 dev_dbg(ctx->dev->dev, "LEN=%d/%d/%u ivsize=%d mode=%x n=%d BI=%d todo=%u way=%x\n",
         |                 ^~~~~~~
   drivers/crypto/rockchip/rk3288_crypto_skcipher.c:383:96: note: format string is defined here
     383 |                 dev_dbg(ctx->dev->dev, "LEN=%d/%d/%u ivsize=%d mode=%x n=%d BI=%d todo=%u way=%x\n",
         |                                                                                               ~^
         |                                                                                                |
         |                                                                                                unsigned int
         |                                                                                               %lx
   drivers/crypto/rockchip/rk3288_crypto_skcipher.c: In function 'rk_ablk_exit_tfm':
   drivers/crypto/rockchip/rk3288_crypto_skcipher.c:474:31: warning: unused variable 'ctx' [-Wunused-variable]
     474 |         struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
         |                               ^~~


vim +383 drivers/crypto/rockchip/rk3288_crypto_skcipher.c

   311	
   312	static int rk_cipher_run(struct crypto_engine *engine, void *async_req)
   313	{
   314		struct skcipher_request *areq = container_of(async_req, struct skcipher_request, base);
   315		struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(areq);
   316		struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
   317		struct rk_cipher_rctx *rctx = skcipher_request_ctx(areq);
   318		struct scatterlist *sgs, *sgd;
   319		int err = 0;
   320		int n = 0;
   321		int ivsize = crypto_skcipher_ivsize(tfm);
   322		int offset;
   323		u8 iv[AES_BLOCK_SIZE];
   324		u8 biv[AES_BLOCK_SIZE];
   325		u8 *ivtouse = areq->iv;
   326		unsigned int len = areq->cryptlen;
   327		unsigned int todo;
   328	
   329		ivsize = crypto_skcipher_ivsize(tfm);
   330		if (areq->iv && crypto_skcipher_ivsize(tfm) > 0) {
   331			if (rctx->mode & RK_CRYPTO_DEC) {
   332				offset = areq->cryptlen - ivsize;
   333				scatterwalk_map_and_copy(rctx->backup_iv, areq->src,
   334							 offset, ivsize, 0);
   335			}
   336		}
   337	
   338		sgs = areq->src;
   339		sgd = areq->dst;
   340	
   341		while (sgs && sgd && len) {
   342			if (!sgs->length) {
   343				sgs = sg_next(sgs);
   344				sgd = sg_next(sgd);
   345				continue;
   346			}
   347			if (rctx->mode & RK_CRYPTO_DEC) {
   348				/* we backup last block of source to be used as IV at next step */
   349				offset = sgs->length - ivsize;
   350				scatterwalk_map_and_copy(biv, sgs, offset, ivsize, 0);
   351			}
   352			if (sgs == sgd) {
   353				err = dma_map_sg(ctx->dev->dev, sgs, 1, DMA_BIDIRECTIONAL);
   354				if (err <= 0) {
   355					err = -EINVAL;
   356					goto theend_iv;
   357				}
   358			} else {
   359				err = dma_map_sg(ctx->dev->dev, sgs, 1, DMA_TO_DEVICE);
   360				if (err <= 0) {
   361					err = -EINVAL;
   362					goto theend_iv;
   363				}
   364				err = dma_map_sg(ctx->dev->dev, sgd, 1, DMA_FROM_DEVICE);
   365				if (err <= 0) {
   366					err = -EINVAL;
   367					goto theend_sgs;
   368				}
   369			}
   370			err = 0;
   371			rk_ablk_hw_init(ctx->dev, areq);
   372			if (ivsize) {
   373				if (ivsize == DES_BLOCK_SIZE)
   374					memcpy_toio(ctx->dev->reg + RK_CRYPTO_TDES_IV_0, ivtouse, ivsize);
   375				else
   376					memcpy_toio(ctx->dev->reg + RK_CRYPTO_AES_IV_0, ivtouse, ivsize);
   377			}
   378			reinit_completion(&ctx->dev->complete);
   379			ctx->dev->status = 0;
   380	
   381			todo = min(sg_dma_len(sgs), len);
   382			len -= todo;
 > 383			dev_dbg(ctx->dev->dev, "LEN=%d/%d/%u ivsize=%d mode=%x n=%d BI=%d todo=%u way=%x\n",
   384				sg_dma_len(sgs), sg_dma_len(sgd), areq->cryptlen,
   385				ivsize, rctx->mode, n, sgs == sgd,
   386				todo, rctx->mode & RK_CRYPTO_DEC);
   387			crypto_dma_start(ctx->dev, sgs, sgd, todo / 4);
   388			wait_for_completion_interruptible_timeout(&ctx->dev->complete,
   389								  msecs_to_jiffies(2000));
   390			if (!ctx->dev->status) {
   391				dev_err(ctx->dev->dev, "DMA timeout\n");
   392				err = -EFAULT;
   393				goto theend;
   394			}
   395			if (sgs == sgd) {
   396				dma_unmap_sg(ctx->dev->dev, sgs, 1, DMA_BIDIRECTIONAL);
   397			} else {
   398				dma_unmap_sg(ctx->dev->dev, sgs, 1, DMA_TO_DEVICE);
   399				dma_unmap_sg(ctx->dev->dev, sgd, 1, DMA_FROM_DEVICE);
   400			}
   401			if (rctx->mode & RK_CRYPTO_DEC) {
   402				memcpy(iv, biv, ivsize);
   403				ivtouse = iv;
   404			} else {
   405				offset = sgd->length - ivsize;
   406				scatterwalk_map_and_copy(iv, sgd, offset, ivsize, 0);
   407				ivtouse = iv;
   408			}
   409			sgs = sg_next(sgs);
   410			sgd = sg_next(sgd);
   411			n++;
   412		}
   413	
   414		if (areq->iv && ivsize > 0) {
   415			offset = areq->cryptlen - ivsize;
   416			if (rctx->mode & RK_CRYPTO_DEC) {
   417				memcpy(areq->iv, rctx->backup_iv, ivsize);
   418				memzero_explicit(rctx->backup_iv, ivsize);
   419			} else {
   420				scatterwalk_map_and_copy(areq->iv, areq->dst, offset,
   421							 ivsize, 0);
   422			}
   423		}
   424	
   425	theend:
   426		local_bh_disable();
   427		crypto_finalize_skcipher_request(engine, areq, err);
   428		local_bh_enable();
   429		return 0;
   430	
   431	theend_sgs:
   432		if (sgs == sgd) {
   433			dma_unmap_sg(ctx->dev->dev, sgs, 1, DMA_BIDIRECTIONAL);
   434		} else {
   435			dma_unmap_sg(ctx->dev->dev, sgs, 1, DMA_TO_DEVICE);
   436			dma_unmap_sg(ctx->dev->dev, sgd, 1, DMA_FROM_DEVICE);
   437		}
   438	theend_iv:
   439		return err;
   440	}
   441	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
