From: Corentin Labbe <clabbe.montjoie@gmail.com>
Subject: [BUG] crypto: rk3288: ecb-aes-rk encryption failed
Date: Fri, 7 Feb 2020 21:48:45 +0100
Message-ID: <20200207204845.GA15221@Red>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-crypto-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-crypto-owner@vger.kernel.org
To: herbert@gondor.apana.org.au, davem@davemloft.net, heiko@sntech.de, linux-rockchip@lists.infradead.org
Cc: linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hello

When running next-20200207 on a rk3288-miqi, I get
alg: skcipher: ecb-aes-rk encryption failed on test vector \"random: len=0 klen=32\"; expected_error=0, actual_error=-22, cfg=\"random: use_final nosimd src_divs=[<flush>54.11%@+27, 29.21%@+0, <flush>0.9%@+3586, 16.59%@+3971] dst_divs=[100.0%@+20] key_offset=63\"

Loading tcrypt later give me:
udevd[117]: worker [125] /devices/platform/ff8a0000.cypto-controller is taking a long time
udevd[117]: worker [125] /devices/platform/ff8a0000.cypto-controller timeout; kill it

Regards
