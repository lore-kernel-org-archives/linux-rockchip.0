Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC246C79F82
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Sep 2026 14:43:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yzgjFjr9WfF45qUjZ2rrl5uk/EM2ZhIPKW5CBwciLVk=; b=T8wAzVRs5qK6LS
	csy5P3LdwYckIgnX+ZOhMf41Qj1+c4SY+Xme9leSUQL3WGfGbmTpkDjWsMqQbq5QwmiK1b4trFGXc
	+QelKwFcs0PdimyU1J1pRFjvPZos/1qFINEBgq3tNGtdyxh57RzV8xUUvqNy0NlT3lTMS2XhLE2Br
	kD2whAPXKf7XopzfcokBd3Hm/xELuY87gxJ6Zt86sPCrsCYW80GIF1v4Dn6jZKUChOJFetu2JS5tc
	PQqfoCkV3/nSoIsHpQc7lM9QfdGwdFDKUIDDmMhnG+kXh5ex218ktcq5SzMpi9rmWov8x/dnuI/4L
	3h5PMxB2i9YzEVLbP2HQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3x2a-00000009J80-27ZG;
	Tue, 08 Sep 2026 14:43:16 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3x2Z-00000009J7O-00ch
	for linux-rockchip@bombadil.infradead.org;
	Tue, 08 Sep 2026 14:43:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=KDuIAOmD9TOy7wbeKmvOrBhyXGkPda+5cVc0xJOwDR0=; b=Jk9YYpkFW7EtFXnXjCCX3rd7cn
	k9BjuH4EJU2/Xtn7gNvyP5GGJ+wnEVxDwfjH0HNa5I/gGwRdl3t8cE8Evy4qXol9IHi8pGtfI7zUf
	6P8Yaha8m0gK6Z26aiIWYKzg4GnGm9MU4by/B7jSImqd5tnabyewN1PRYY0okZnDRewvlzs9NUVJn
	MlXBaiH0qneDdaVEmLG+7a+EbFsJCM+1FZziZH2zMw4XowPI3y1CosHSZCThZ42mHH05mh2P1QdVu
	6bExEQKEaGR5BHNLeULp23YH7D91Ul6W7CH1NosaHCpRZuz2IdQWBa1Wz/9XJHVrjsy4IhgBb6mXi
	JPYRinog==;
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x3x2W-0000000HYIX-0hQs
	for linux-rockchip@lists.infradead.org;
	Tue, 08 Sep 2026 14:43:13 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-49d157f691cso1026015e9.1
        for <linux-rockchip@lists.infradead.org>; Tue, 08 Sep 2026 07:43:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788878591; x=1789483391; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=KDuIAOmD9TOy7wbeKmvOrBhyXGkPda+5cVc0xJOwDR0=;
        b=RMrMLbOBPO1IPTYo9G/rplCt9bdeCXeq/lu/k1cmA44mo/ToxfJYcfNrMFFlKppI0p
         ADV1O3wXlN8f84WKUxNKF3UQL8Z6hGjIhp4ZBuHjeHumntVH0dRZ2e8eAxVidufwCc2G
         7fohtvYLHx55iEModmHAtEcWJREMglHN3ge6hySwCTEk+OYQXeDeBOlVAQi6BqmAynH7
         Fe2V5jLiS40Lr3njPvBh7jssbune5fo0TpvsXyvWStdmkl4PqSNOWY/e/dlP5qXPWaMm
         /zZIaKtY3EbIxF2Pfr2OlQW79tAwQp0u9M6MW0HlBt5HmKS1TVSB4bHst8/NIRnwb56k
         6eBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788878591; x=1789483391;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=KDuIAOmD9TOy7wbeKmvOrBhyXGkPda+5cVc0xJOwDR0=;
        b=CGsHFkATavCXT2dM0393CNQg9wZC73UzMT5h4p37l/z4AI2v+ZsL70NfjNjeHNLW5I
         8PeuJUogaGotyFaf8PAro/bZLXQwJxt6KJ1f/jCPwjw2vrn+ytnQo1UPoxyUHfESBBRf
         s2U48JboHxeoJ9WxmZZU/+FJY2nxLqsNvqC03FgDzpvPBNbcF6tuJgGqIMWm9etgc3YZ
         N4/k5lvLGVNxeygE5GduZBpkWVuIXNaMsU0cF7EpyUEzSreGdRCOUcl0dagkuJop3DMc
         b+20rCX6tRxJAUglXCMzOTa64LS4Ct7ihWTa5/dVkSKT02Q7o7E7cPBM3pdQ3sRaPvY2
         f2lQ==
X-Forwarded-Encrypted: i=1; AKwUvBzvpKiJycpmRqYKjYEbpvpiIC0tLxMqE5zIWXh+dx42Be4+9/Ne7XhcPMJCRDszpDNpBNJ8UTDwtMW9bau+fQ==@lists.infradead.org
X-Gm-Message-State: AFuF++km6Hk3asLaYHtq7SCWB6bvj4RUre4k86AreU9Ygi7DIsj9Dscv
	mBrWr17/G63SVGMdiqV5zeWpP+HrjVOC5V976FmxD9zcR72PEV4F8xYfGl3ru1EM
X-Gm-Gg: AYBFou0D9b1fkih/0B1+I+DhzTi/tz7FKpKsRTzbKM9wB//JXJUMZlDwzi7rEcpwX9/
	VS4/Qbs4yW9sLYjcHPRE6eApZi+2o9Uy3oUrg48x1Us7/6tbMCZ3uxWMjaY3ER+ZgPzo5fd1Whd
	MsLQZL5y1VuCCJbdcUwA+X3SWHDaatghTpTKLoq5omJlWMe8giZQAF0OUXfJGeKm6p5Dl5vFzua
	Bsp3AGKToN7K/jCxjt4L0bvoOYanjZoGvP/59i//uCBJSc0JlmSa9AZVv22IWxoQcyixl1W8RhU
	HMrQ5hFMlZe1/Ni2hEJNlL5grXu5zlRl6QaQOG67dpn0KnptGlYrwfTn0KkxnRqCAdaLA6WTRYR
	45jfudrt4w5F4KG5lczxRRKW9mie4DpwNL2xzKT/wPJO5dY91OPjWNxiE9bOa6OZ6bUmae59bZz
	zGQASnmOGnkNnG30L1gm6rFukVIBKp4uwqME5LrG9Prfcna/gU2FJQO2P5WptNRJx36Mda2sXJj
	/MZrEryZqYv0CKw6aUJ+tvd3qsi183h0S1VjR6vRX0r0Co1gCsoF6k/6ZRqGCbwL9211Q==
X-Received: by 2002:a05:600c:4f48:b0:49d:798:67a4 with SMTP id 5b1f17b1804b1-49d079867f5mr193440325e9.0.1788878590675;
        Tue, 08 Sep 2026 07:43:10 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B825D00A0B3828666A65C4F.dsl.pool.telekom.hu. [2001:4c4e:1b82:5d00:a0b3:8286:66a6:5c4f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49cee7fec25sm564356455e9.13.2026.09.08.07.43.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Sep 2026 07:43:10 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Vinod Koul <vkoul@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-usb@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: s2idle resume hangs in ohci/ehci on RK3588: HC registers touched before the USB2 PHY is powered back on
Date: Tue,  8 Sep 2026 16:42:44 +0200
Message-ID: <20260908144245.10700-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260908133147.8291-1-royalnet026@gmail.com>
References: <20260907190000.s2idle-usb2-resume-royalnet026@gmail.com> <ap__5zeUakMSLWOQ@venus> <20260908133147.8291-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260908_154312_479002_62BDE3A8 
X-CRM114-Status: GOOD (  21.29  )
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

Hello Sebastian,

I tested 53014abc on the Orange Pi 5 Plus and it fixes the hang here.

Setup: same kernel (7.3.0-rc1 based), same dts, same procedure as the
report, all four USB 2.0 hosts bound, RTC alarm as the wakeup source.
The only change is that commit in phy-rockchip-inno-usb2.

Result: 4 full s2idle cycles, all of them resumed. The controller that
used to hang, fc840000 (the OHCI on u2phy2, the port with nothing
plugged in whose 480 MHz clock had it as its only user), went from
"enters ohci_platform_resume and never returns" to:

  ohci-platform fc840000.usb: PM: ohci_platform_resume returned 0 after 20649 usecs
  ohci-platform fc840000.usb: PM: ohci_platform_resume returned 0 after 20773 usecs
  ...

8 out of 8 resume passes in that boot returned 0 (4 real s2idle cycles
plus the pm_test device/platform phases), each around 20.7 ms, and the
same for fc8c0000. For comparison, before the patch the all-bound
configuration hung every single time and needed a cold reset, while the
control with the four hosts unbound completed 4 out of 4.

Tested-by: Igor Paunovic <royalnet026@gmail.com> # Orange Pi 5 Plus (RK3588)

Two things about how the module was built, so the tag is not read as
more than it is. The kernel was built with aarch64-linux-gnu-gcc 13.3.0
and I built the module with gcc 15.2.0 on the board itself, against the
installed linux-headers package (that package is arm64, so its host
tools cannot run on my x86 build machine). vermagic and the modversions
CRCs match, and as a control I first rebuilt the unmodified file from
the same commit and got exactly the srcversion of the stock module, so
the difference in the tested module comes from your patch and nothing
else. The module is also unsigned, since the headers package has no
private key, so the kernel is tainted O and E.

Two log entries I do not think are related, mentioned so you know I read
the whole log rather than only the part I was looking for. On one resume
there is an rcu_preempt stall report, but RCU marks the CPUs
"(false positive?)", the NMI is answered, and the backtraces show them in
cpuidle_enter_s2idle, i.e. asleep where they should be - the opposite of
the original failure, where the CPUs did not answer the NMI at all. And
on one of the three resumes there is a WARNING in
drm_crtc_wait_one_vblank ("vblank wait timed out on crtc 0"). It is
display side, and it happened on one resume only rather than on all of
them; one of the monitors on this board goes into its own power saving
after a while, which would leave the CRTC with no vblank to wait for
while keeping HPD asserted, so nothing about it appears in the log. I
cannot prove that from the log either way, but it is not the USB path.

Also, the network check right after resume fails for about a second
before r8169 reports "Link is Up - 2.5Gbps/Full"; that is my script
asking too early, not a regression.

Happy to re-run this on the version you post this week, and to test the
PCIe suspend series on this board as well if that is useful - it has
NVMe, two r8169 NICs and an rtw89 card on PCIe.

Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
