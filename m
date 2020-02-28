From: Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: Re: [PATCH 37/51] drm/rockchip: Drop explicit
 drm_mode_config_cleanup call
Date: Sat, 29 Feb 2020 00:34:06 +0100
Message-ID: <CAKMK7uF1aRxLs-wxdSP5BoENFib96AhiuqCasDE19YdnmrG35g@mail.gmail.com>
References: <20200227181522.2711142-38-daniel.vetter@ffwll.ch>
 <202002290524.w5E4ezpR%lkp@intel.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <intel-gfx-bounces@lists.freedesktop.org>
In-Reply-To: <202002290524.w5E4ezpR%lkp@intel.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, Francesco Lavra <francescolavra.fl@gmail.com>, Intel Graphics Development <intel-gfx@lists.freedesktop.org>, Marco Felsch <m.felsch@pengutronix.de>, DRI Development <dri-devel@lists.freedesktop.org>, Sandy Huang <hjc@rock-chips.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Daniel Vetter <daniel.vetter@intel.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

Drat I butchered this. Will fix for next round and actually
compile-test arm again :-/
-Daniel

On Fri, Feb 28, 2020 at 10:19 PM kbuild test robot <lkp@intel.com> wrote:
>
> Hi Daniel,
>
> I love your patch! Yet something to improve:
>
> [auto build test ERROR on drm-tip/drm-tip]
> [also build test ERROR on next-20200228]
> [cannot apply to drm-intel/for-linux-next linus/master pinchartl-media/drm/du/next v5.6-rc3]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
>
> url:    https://github.com/0day-ci/linux/commits/Daniel-Vetter/drm-managed-resources-v3/20200229-005817
> base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
> config: arm64-defconfig (attached as .config)
> compiler: aarch64-linux-gcc (GCC) 7.5.0
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         GCC_VERSION=7.5.0 make.cross ARCH=arm64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>    drivers/gpu/drm/rockchip/rockchip_drm_drv.c: In function 'rockchip_drm_bind':
> >> drivers/gpu/drm/rockchip/rockchip_drm_drv.c:147:3: error: label 'err_mode_config_cleanup' used but not defined
>       goto err_mode_config_cleanup;
>       ^~~~
>
> vim +/err_mode_config_cleanup +147 drivers/gpu/drm/rockchip/rockchip_drm_drv.c
>
> 2048e3286f347db Mark Yao          2014-08-22  110
> f706974a69b6e2b Tomeu Vizoso      2016-06-10  111  static int rockchip_drm_bind(struct device *dev)
> 2048e3286f347db Mark Yao          2014-08-22  112  {
> f706974a69b6e2b Tomeu Vizoso      2016-06-10  113       struct drm_device *drm_dev;
> 2048e3286f347db Mark Yao          2014-08-22  114       struct rockchip_drm_private *private;
> 2048e3286f347db Mark Yao          2014-08-22  115       int ret;
> 2048e3286f347db Mark Yao          2014-08-22  116
> f706974a69b6e2b Tomeu Vizoso      2016-06-10  117       drm_dev = drm_dev_alloc(&rockchip_drm_driver, dev);
> 0f2886057be322d Tom Gundersen     2016-09-21  118       if (IS_ERR(drm_dev))
> 0f2886057be322d Tom Gundersen     2016-09-21  119               return PTR_ERR(drm_dev);
> 2048e3286f347db Mark Yao          2014-08-22  120
> f706974a69b6e2b Tomeu Vizoso      2016-06-10  121       dev_set_drvdata(dev, drm_dev);
> f706974a69b6e2b Tomeu Vizoso      2016-06-10  122
> f706974a69b6e2b Tomeu Vizoso      2016-06-10  123       private = devm_kzalloc(drm_dev->dev, sizeof(*private), GFP_KERNEL);
> f706974a69b6e2b Tomeu Vizoso      2016-06-10  124       if (!private) {
> f706974a69b6e2b Tomeu Vizoso      2016-06-10  125               ret = -ENOMEM;
> 9127f99c4801f32 Tomasz Figa       2016-06-21  126               goto err_free;
> f706974a69b6e2b Tomeu Vizoso      2016-06-10  127       }
> f706974a69b6e2b Tomeu Vizoso      2016-06-10  128
> 2048e3286f347db Mark Yao          2014-08-22  129       drm_dev->dev_private = private;
> 2048e3286f347db Mark Yao          2014-08-22  130
> 5182c1a556d7ff7 Yakir Yang        2016-07-24  131       INIT_LIST_HEAD(&private->psr_list);
> 60beeccc72cabef Sean Paul         2018-03-05  132       mutex_init(&private->psr_list_lock);
> 5182c1a556d7ff7 Yakir Yang        2016-07-24  133
> ccea91998c8f140 Jeffy Chen        2017-04-06  134       ret = rockchip_drm_init_iommu(drm_dev);
> ccea91998c8f140 Jeffy Chen        2017-04-06  135       if (ret)
> ccea91998c8f140 Jeffy Chen        2017-04-06  136               goto err_free;
> ccea91998c8f140 Jeffy Chen        2017-04-06  137
> 7db42e97bb41bd5 Daniel Vetter     2020-02-27  138       ret = drm_mode_config_init(drm_dev);
> 7db42e97bb41bd5 Daniel Vetter     2020-02-27  139       if (ret)
> 7db42e97bb41bd5 Daniel Vetter     2020-02-27  140               goto err_iommu_cleanup;
> 2048e3286f347db Mark Yao          2014-08-22  141
> 2048e3286f347db Mark Yao          2014-08-22  142       rockchip_drm_mode_config_init(drm_dev);
> 2048e3286f347db Mark Yao          2014-08-22  143
> 2048e3286f347db Mark Yao          2014-08-22  144       /* Try to bind all sub drivers. */
> 2048e3286f347db Mark Yao          2014-08-22  145       ret = component_bind_all(dev, drm_dev);
> 2048e3286f347db Mark Yao          2014-08-22  146       if (ret)
> ccea91998c8f140 Jeffy Chen        2017-04-06 @147               goto err_mode_config_cleanup;
> 2048e3286f347db Mark Yao          2014-08-22  148
> ccea91998c8f140 Jeffy Chen        2017-04-06  149       ret = drm_vblank_init(drm_dev, drm_dev->mode_config.num_crtc);
> ccea91998c8f140 Jeffy Chen        2017-04-06  150       if (ret)
> ccea91998c8f140 Jeffy Chen        2017-04-06  151               goto err_unbind_all;
> ccea91998c8f140 Jeffy Chen        2017-04-06  152
> ccea91998c8f140 Jeffy Chen        2017-04-06  153       drm_mode_config_reset(drm_dev);
> 2048e3286f347db Mark Yao          2014-08-22  154
> 2048e3286f347db Mark Yao          2014-08-22  155       /*
> 2048e3286f347db Mark Yao          2014-08-22  156        * enable drm irq mode.
> 2048e3286f347db Mark Yao          2014-08-22  157        * - with irq_enabled = true, we can use the vblank feature.
> 2048e3286f347db Mark Yao          2014-08-22  158        */
> 2048e3286f347db Mark Yao          2014-08-22  159       drm_dev->irq_enabled = true;
> 2048e3286f347db Mark Yao          2014-08-22  160
> 2048e3286f347db Mark Yao          2014-08-22  161       ret = rockchip_drm_fbdev_init(drm_dev);
> 2048e3286f347db Mark Yao          2014-08-22  162       if (ret)
> 8415ab565da966b Mark Yao          2017-08-01  163               goto err_unbind_all;
> 8415ab565da966b Mark Yao          2017-08-01  164
> 8415ab565da966b Mark Yao          2017-08-01  165       /* init kms poll for handling hpd */
> 8415ab565da966b Mark Yao          2017-08-01  166       drm_kms_helper_poll_init(drm_dev);
> 2048e3286f347db Mark Yao          2014-08-22  167
> 9127f99c4801f32 Tomasz Figa       2016-06-21  168       ret = drm_dev_register(drm_dev, 0);
> 9127f99c4801f32 Tomasz Figa       2016-06-21  169       if (ret)
> 8415ab565da966b Mark Yao          2017-08-01  170               goto err_kms_helper_poll_fini;
> 9127f99c4801f32 Tomasz Figa       2016-06-21  171
> 2048e3286f347db Mark Yao          2014-08-22  172       return 0;
> 2048e3286f347db Mark Yao          2014-08-22  173  err_kms_helper_poll_fini:
> 2048e3286f347db Mark Yao          2014-08-22  174       drm_kms_helper_poll_fini(drm_dev);
> 8415ab565da966b Mark Yao          2017-08-01  175       rockchip_drm_fbdev_fini(drm_dev);
> ccea91998c8f140 Jeffy Chen        2017-04-06  176  err_unbind_all:
> 2048e3286f347db Mark Yao          2014-08-22  177       component_unbind_all(dev, drm_dev);
> 7db42e97bb41bd5 Daniel Vetter     2020-02-27  178  err_iommu_cleanup:
> ccea91998c8f140 Jeffy Chen        2017-04-06  179       rockchip_iommu_cleanup(drm_dev);
> f706974a69b6e2b Tomeu Vizoso      2016-06-10  180  err_free:
> 574e0fbfc95e7fc Thomas Zimmermann 2018-07-17  181       drm_dev_put(drm_dev);
> 2048e3286f347db Mark Yao          2014-08-22  182       return ret;
> 2048e3286f347db Mark Yao          2014-08-22  183  }
> 2048e3286f347db Mark Yao          2014-08-22  184
>
> :::::: The code at line 147 was first introduced by commit
> :::::: ccea91998c8f140bc3e324bbb3c3fb7148e72d31 drm/rockchip: Reorder drm bind/unbind sequence
>
> :::::: TO: Jeffy Chen <jeffy.chen@rock-chips.com>
> :::::: CC: Sean Paul <seanpaul@chromium.org>
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org



-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
