Return-Path: <SRS0=vbLC=C2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D9F3C43461
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Sep 2020 08:36:05 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0374E2075E
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Sep 2020 08:36:04 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="rc7Jbh6y";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=endlessos-org.20150623.gappssmtp.com header.i=@endlessos-org.20150623.gappssmtp.com header.b="rjctCKac"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0374E2075E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=endlessos.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:MIME-Version:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ljJs/iubr9JX1vqwfPCcVAuFPt/eFYhBwdNxJJB2D8E=; b=rc7Jbh6yh65aOnvvxRf7sRv+xg
	FemMLqd0KavnBOtiB1Sjn549+BWotQannWQaWH1Tb6SEDDcYSe667fN9/HrVD7b6/MK4Ngt26cxLo
	L36jtiyWC4+6Zx/5BbQPc365CUU0t/J9ARtmvfG54UZfPDzf48oIZbs1GMY3JvVslvazwo+Hx8ebT
	sk+ahwv19DkOUyIH/E0aWxAUMcJx/SGDEAaByr043N6FEQ5uRd4hprKzNfyLJIv4EfQEsPjrYdP/V
	H0sy3x6ZlE1Mqzu9WX8uE314uijYI2KVCweBiwmVi/83SbnlyjwlwrAU8yW3QlGJE/+k3gLPMrrC6
	9Ln+grrw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kIpOZ-0000aO-SF; Thu, 17 Sep 2020 08:35:59 +0000
Received: from mail-ot1-x332.google.com ([2607:f8b0:4864:20::332])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIpOX-0000Yr-8f
 for linux-rockchip@lists.infradead.org; Thu, 17 Sep 2020 08:35:58 +0000
Received: by mail-ot1-x332.google.com with SMTP id o6so1187579ota.2
 for <linux-rockchip@lists.infradead.org>; Thu, 17 Sep 2020 01:35:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=endlessos-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=kQ9c6/cY7AA2icz6nrLQ2odqECkN7VHWBrAXOAN3CL8=;
 b=rjctCKacuLheS1l4CHlvrW2jzI0JYuavDUQ+sD7Rez+RZKH3ncCxjiP6bqCM71RJ6I
 7CU3LzuKOwo9I98LiQ9RXUQkG42ggFUWuk6qSTmLID+4RNoQgVllf9724jKQGw0m4hcN
 RrUVH68brzi3LJ9GmrfCLmvzrgvlxyMeSeOFZ2T+hYwRehDYmnpnG8wHLTobCTRnPtsW
 VKpaVSuWi5IShNWGUCAsgogPijc1VaCGN3UnaiITUHJNzHmp3PLuh6galzdG5UgqvuOb
 wpYQEYX86qCPMk8e+bgFDb7lIAeIXKa9jzeGZfRZbUuZ6z5212Cw0GlncKHs329+W8fF
 afcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=kQ9c6/cY7AA2icz6nrLQ2odqECkN7VHWBrAXOAN3CL8=;
 b=BGiYhiMMhO3ivon9spdw+hT9+ub/d3xWiimKtIorZ94iwC9TuCXIMeCUrZ5AopUSeP
 IvGPA6d/BeaoSem3ulF0PI1ptwkvxE6LGARNi547MCSGExfUJF4WATRv/I+KHmASQ0LF
 jF3FnSlmDSiQ6N9q3gKL+D1r0niVYdj7WdKvb/Tf10L3U/zPVkoZdevtzVnl2wQEs/en
 RHi5FGQKi3FZWmNjoBhCkyYux8QMQEC5RdROptmTzBY76VjmAiNHUDWfmPM0tB/ul1lp
 tLz6o/6cFRyKtYPmiMiqX626fu9ax5bxYLNQkqHi9l9RZjl4keIKYJA4N4+rqIVIlU7J
 4yGw==
X-Gm-Message-State: AOAM532mUQm7Tq/OCMV50h27jXGnrk99HgZnsnlaOfsw6/ai58Fsf46O
 vL6QOSnrlqKgOrhAqFW3dt3XGP0I+cKJ+Q4ppkkAHJYQ2i7MRUeJ
X-Google-Smtp-Source: ABdhPJxwqv+r85faUaLA8WYJeV6XV5XcFu/cmmYdZ9MMagdMgVPHvq5Dl1nyUai/K3A8+1gJmRuGj62bRAPnOG4l5QQ=
X-Received: by 2002:a9d:1:: with SMTP id 1mr17486919ota.81.1600331753437; Thu,
 17 Sep 2020 01:35:53 -0700 (PDT)
MIME-Version: 1.0
From: Jian-Hong Pan <jhp@endlessos.org>
Date: Thu, 17 Sep 2020 16:34:18 +0800
Message-ID: <CAPpJ_efHX70Ej0uzRi-iRf7N0n6ZO5sMN-wK_YpszvVD-Un9RQ@mail.gmail.com>
Subject: [QUESTION] Enable PINEBOOK Pro's display
To: linux-rockchip@lists.infradead.org, t.schramm@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200917_043557_422263_983A1EB2 
X-CRM114-Status: UNSURE (   7.34  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Linux Upstreaming Team <linux@endlessm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

We have a PINEBOOK Pro [1] equipped with Rockchip RK3399.
I tried linux-next kernel at tag 5.9.0-rc5-next-20200915 with the
build config [2].  However, the drm seems failed and also leads Xorg
failed.

Here is the log [3]:

kernel: rockchip-dp ff970000.edp: no DP phy configured
kernel: cdn-dp fec00000.dp: [drm:cdn_dp_probe [rockchipdrm]] *ERROR*
missing extcon or phy
kernel: cdn-dp: probe of fec00000.dp failed with error -22
...
gdm-Xorg-:0[660]: (EE) open /dev/fb0: No such file or directory
gdm-Xorg-:0[660]: (EE) No devices detected.
gdm-Xorg-:0[660]: (EE)
gdm-Xorg-:0[660]: Fatal server error:
gdm-Xorg-:0[660]: (EE) no screens found(EE)

Do I miss something?  Any guidance will be appreciated.

[1] https://www.pine64.org/pinebook-pro/
[2] https://gist.github.com/starnight/66d27f7888d599247371adb1575d1092#file-config
[3] https://gist.github.com/starnight/66d27f7888d599247371adb1575d1092#file-journal-log

Jian-Hong Pan

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
