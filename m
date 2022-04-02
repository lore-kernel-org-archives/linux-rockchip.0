Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EB21C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Apr 2022 08:24:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oRo1TOddrGI5gcsFYVuzfenGsytAR2iuE1ygIe4Q3F0=; b=lrGsdRI4RwvOpH
	ZT86SSFCtFe/367AtHs3numWE8LtdOeZPA3fcc6cYy26DeEkUny+FyRXjUQOvm+frOgYd4HcZceOZ
	BL23KvndcWOq1AB8qU+TqA7mb51wgTCoDYJL6cb98JmiEoMbZtabLBVVDAv645Fc5EIvYq1ZWXuK8
	jtyatPNhf/UnKrstZ44gwF77py3mo73aE+YR1kgPEA8h+L7Dckj0VdVNi9qtAsUS4qfzl9MKbLgd6
	c/G8tN2ZK4c+cx17O8Ho0TqUlCbYWbS+NyWsjK1JlWe4wQmEpfM5JOufZ2XiiG4mshQpRQ8hv2AeN
	H0kLVnfzIlXZPECUAe+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naZ3H-008K2U-8R; Sat, 02 Apr 2022 08:24:07 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naZ36-008Jzf-1W; Sat, 02 Apr 2022 08:23:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648887835; x=1680423835;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Gnc7Vq8A0AMWRP1SecSxWIcpYauRkoVdUdGm+VQNnk4=;
 b=OepzJM+Myi4s1yCRR9fNhKMZVUKLmOZgfE9MDu3za8JQLxnBKBEym6oR
 LVvgfuQc36kj46p2GPn6W1DmuFRMAPTBXFtcRL4q+MMJ8TTHuiU6+BJ1T
 gpespaMVO033R8UOZtzuksLXEYza6EACfXgEWaAx7jPzGrxzhckHwfppq
 OQCZlr3QBYh7pZ71e8alXOMFsA6CLqmxjw3f+OqSZiH+HRnN6doprX3mD
 NXujRJyV6CRKHZmIecUFWI4JO8dg6HHzrgWbRYAvkeUvZhhrV3qdexBYp
 6B3wphKH5EkvRUfqv9y4R2ZYJIX/56l+3etigZhRwkLIW/uyn41RVhdJR g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10304"; a="323463076"
X-IronPort-AV: E=Sophos;i="5.90,229,1643702400"; d="scan'208";a="323463076"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2022 01:23:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,229,1643702400"; d="scan'208";a="587101927"
Received: from lkp-server02.sh.intel.com (HELO 3231c491b0e2) ([10.239.97.151])
 by orsmga001.jf.intel.com with ESMTP; 02 Apr 2022 01:23:50 -0700
Received: from kbuild by 3231c491b0e2 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1naZ2z-00025L-9v;
 Sat, 02 Apr 2022 08:23:49 +0000
Date: Sat, 2 Apr 2022 16:22:56 +0800
From: kernel test robot <lkp@intel.com>
To: Corentin Labbe <clabbe@baylibre.com>, heiko@sntech.de,
 herbert@gondor.apana.org.au, krzk+dt@kernel.org, robh+dt@kernel.org
Cc: llvm@lists.linux.dev, kbuild-all@lists.01.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: Re: [PATCH v4 10/33] crypto: rockchip: rework by using crypto_engine
Message-ID: <202204021634.IhyHrjoT-lkp@intel.com>
References: <20220401201804.2867154-11-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220401201804.2867154-11-clabbe@baylibre.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220402_012356_216590_C9D54B05 
X-CRM114-Status: GOOD (  17.72  )
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

[auto build test WARNING on next-20220331]
[also build test WARNING on v5.17]
[cannot apply to rockchip/for-next herbert-cryptodev-2.6/master herbert-crypto-2.6/master v5.17 v5.17-rc8 v5.17-rc7]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/intel-lab-lkp/linux/commits/Corentin-Labbe/crypto-rockchip-permit-to-pass-self-tests/20220402-042221
base:    fdcbcd1348f4ef713668bae1b0fa9774e1811205
config: arm64-buildonly-randconfig-r001-20220402 (https://download.01.org/0day-ci/archive/20220402/202204021634.IhyHrjoT-lkp@intel.com/config)
compiler: clang version 15.0.0 (https://github.com/llvm/llvm-project c4a1b07d0979e7ff20d7d541af666d822d66b566)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # https://github.com/intel-lab-lkp/linux/commit/be381eb03ba20a6e06f0e880a9929d14a1e13064
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Corentin-Labbe/crypto-rockchip-permit-to-pass-self-tests/20220402-042221
        git checkout be381eb03ba20a6e06f0e880a9929d14a1e13064
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=arm64 SHELL=/bin/bash drivers/crypto/rockchip/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   drivers/crypto/rockchip/rk3288_crypto_skcipher.c:21:46: error: use of undeclared identifier 'tfm'
           unsigned int bs = crypto_skcipher_blocksize(tfm);
                                                       ^
>> drivers/crypto/rockchip/rk3288_crypto_skcipher.c:328:6: warning: variable 'n' set but not used [-Wunused-but-set-variable]
           int n = 0;
               ^
   1 warning and 1 error generated.


vim +/n +328 drivers/crypto/rockchip/rk3288_crypto_skcipher.c

   319	
   320	static int rk_cipher_run(struct crypto_engine *engine, void *async_req)
   321	{
   322		struct skcipher_request *areq = container_of(async_req, struct skcipher_request, base);
   323		struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(areq);
   324		struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
   325		struct rk_cipher_rctx *rctx = skcipher_request_ctx(areq);
   326		struct scatterlist *sgs, *sgd;
   327		int err = 0;
 > 328		int n = 0;
   329		int ivsize = crypto_skcipher_ivsize(tfm);
   330		int offset;
   331		u8 iv[AES_BLOCK_SIZE];
   332		u8 biv[AES_BLOCK_SIZE];
   333		u8 *ivtouse = areq->iv;
   334		unsigned int len = areq->cryptlen;
   335		unsigned int todo;
   336	
   337		ivsize = crypto_skcipher_ivsize(tfm);
   338		if (areq->iv && crypto_skcipher_ivsize(tfm) > 0) {
   339			if (rctx->mode & RK_CRYPTO_DEC) {
   340				offset = areq->cryptlen - ivsize;
   341				scatterwalk_map_and_copy(rctx->backup_iv, areq->src,
   342							 offset, ivsize, 0);
   343			}
   344		}
   345	
   346		sgs = areq->src;
   347		sgd = areq->dst;
   348	
   349		while (sgs && sgd && len) {
   350			if (!sgs->length) {
   351				sgs = sg_next(sgs);
   352				sgd = sg_next(sgd);
   353				continue;
   354			}
   355			if (rctx->mode & RK_CRYPTO_DEC) {
   356				/* we backup last block of source to be used as IV at next step */
   357				offset = sgs->length - ivsize;
   358				scatterwalk_map_and_copy(biv, sgs, offset, ivsize, 0);
   359			}
   360			if (sgs == sgd) {
   361				err = dma_map_sg(ctx->dev->dev, sgs, 1, DMA_BIDIRECTIONAL);
   362				if (err <= 0) {
   363					err = -EINVAL;
   364					goto theend_iv;
   365				}
   366			} else {
   367				err = dma_map_sg(ctx->dev->dev, sgs, 1, DMA_TO_DEVICE);
   368				if (err <= 0) {
   369					err = -EINVAL;
   370					goto theend_iv;
   371				}
   372				err = dma_map_sg(ctx->dev->dev, sgd, 1, DMA_FROM_DEVICE);
   373				if (err <= 0) {
   374					err = -EINVAL;
   375					goto theend_sgs;
   376				}
   377			}
   378			err = 0;
   379			rk_ablk_hw_init(ctx->dev, areq);
   380			if (ivsize) {
   381				if (ivsize == DES_BLOCK_SIZE)
   382					memcpy_toio(ctx->dev->reg + RK_CRYPTO_TDES_IV_0, ivtouse, ivsize);
   383				else
   384					memcpy_toio(ctx->dev->reg + RK_CRYPTO_AES_IV_0, ivtouse, ivsize);
   385			}
   386			reinit_completion(&ctx->dev->complete);
   387			ctx->dev->status = 0;
   388	
   389			todo = min(sg_dma_len(sgs), len);
   390			len -= todo;
   391			crypto_dma_start(ctx->dev, sgs, sgd, todo / 4);
   392			wait_for_completion_interruptible_timeout(&ctx->dev->complete,
   393								  msecs_to_jiffies(2000));
   394			if (!ctx->dev->status) {
   395				dev_err(ctx->dev->dev, "DMA timeout\n");
   396				err = -EFAULT;
   397				goto theend;
   398			}
   399			if (sgs == sgd) {
   400				dma_unmap_sg(ctx->dev->dev, sgs, 1, DMA_BIDIRECTIONAL);
   401			} else {
   402				dma_unmap_sg(ctx->dev->dev, sgs, 1, DMA_TO_DEVICE);
   403				dma_unmap_sg(ctx->dev->dev, sgd, 1, DMA_FROM_DEVICE);
   404			}
   405			if (rctx->mode & RK_CRYPTO_DEC) {
   406				memcpy(iv, biv, ivsize);
   407				ivtouse = iv;
   408			} else {
   409				offset = sgd->length - ivsize;
   410				scatterwalk_map_and_copy(iv, sgd, offset, ivsize, 0);
   411				ivtouse = iv;
   412			}
   413			sgs = sg_next(sgs);
   414			sgd = sg_next(sgd);
   415			n++;
   416		}
   417	
   418		if (areq->iv && ivsize > 0) {
   419			offset = areq->cryptlen - ivsize;
   420			if (rctx->mode & RK_CRYPTO_DEC) {
   421				memcpy(areq->iv, rctx->backup_iv, ivsize);
   422				memzero_explicit(rctx->backup_iv, ivsize);
   423			} else {
   424				scatterwalk_map_and_copy(areq->iv, areq->dst, offset,
   425							 ivsize, 0);
   426			}
   427		}
   428	
   429	theend:
   430		local_bh_disable();
   431		crypto_finalize_skcipher_request(engine, areq, err);
   432		local_bh_enable();
   433		return 0;
   434	
   435	theend_sgs:
   436		if (sgs == sgd) {
   437			dma_unmap_sg(ctx->dev->dev, sgs, 1, DMA_BIDIRECTIONAL);
   438		} else {
   439			dma_unmap_sg(ctx->dev->dev, sgs, 1, DMA_TO_DEVICE);
   440			dma_unmap_sg(ctx->dev->dev, sgd, 1, DMA_FROM_DEVICE);
   441		}
   442	theend_iv:
   443		return err;
   444	}
   445	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
