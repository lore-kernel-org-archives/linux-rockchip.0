Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92CE4CCD185
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Oct 2025 15:31:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:From:Subject:Message-Id:Date:
	Mime-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=n+XK/anaq576WMOa7/h13kphJBc9zpXedtK19pqVwFk=; b=mUpNLL95o76Cbo
	hgckh2YaV4nzSlmDLpdLSoSBsxz+sI8rpPP7BZVQ/0+/vVrWo6diA0gvCdiCzY1vlH4z2ghMYCgbs
	oEG9dsMziJYK8Cp3zYB6Cf7fd7xkf1a0kEV/VIN1kbDPhvzzRFwfkvJPgf+B1lms77ij8Qcs6wLEl
	e1OWGu8CBeg2tpCV3+L+DKX26zGO1Zkin4AQnMm4BnqykCwaP9JgjNMZPaLxadtrjEyhixutwZk9+
	9YdB39BRKLb9fjORkAFvIx+mFR/d85y9gJZboQuKuHcrJ5wqgVaHWAf10T1nc1VSUXToSkrI90R6Q
	YK4f22amDFXgJFfraajQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v93T6-000000026HT-1Fh9;
	Wed, 15 Oct 2025 15:31:12 +0000
Received: from out-188.mta1.migadu.com ([95.215.58.188])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v93T0-000000026Fb-1YFE
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Oct 2025 15:31:11 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1760542263;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=phiaHrkuHX1+QSJO+QQJsBVlliCLRCFSYHUsw0Fujng=;
	b=CjahYkpCEkovwyh+HON1KkwQNpcOcPIs33rtsHWogAbhBZYwqO7oGBDoxAuzh0uoO5pyFH
	8zhv3I0NZWVu6JOJ10Dp2ZFhn1FFSzRTMJ5mxKVS5LlSlC4Oap7f7CQjlq02nzsaBrPN4z
	wPAqg4D4x+KFa+D1eOH1pIIXLHcfpOidttLi+gYgDLtRUCVKqUpvgQMBhMBtmBS+jmmWaY
	P2w9IPnGCtQQhlOcVssUueHt1dsYuCFkKAD1e7jA9gyC2EsD5zENRZPK12s6aR0JGJirkl
	sKsK+2CeV1tIQbgzMfbJ9Uay1wIC9LkKdvRD9YY6G3qpk+XLUpssimjvS5jb7g==
Date: Wed, 15 Oct 2025 17:30:53 +0200
Message-Id: <DDJ05640974K.3G1TLY1B75G7@cknow-tech.com>
Subject: Endless spam in dmesg: ASoC error (-19): at snd_soc_dai_prepare()
 on i2s-hifi
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: <linux-sound@vger.kernel.org>
Cc: <linux-rockchip@lists.infradead.org>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_083106_761490_22034BFD 
X-CRM114-Status: UNSURE (   7.14  )
X-CRM114-Notice: Please train this message.
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

Hi,

On several of my Rockchip based devices I get ASoC errors, where the one
from the subject occurs the most, but there are others as well.
While it should ofc be reported when an error occurs, the volume was
bad, then really bad and now it's just absurd:

root@rock5b:~# dmesg | grep -c "ASoC error (-19): at snd_soc_dai_prepare"
983

If 'dmesg' buffer can hold 1000 lines, then I have 17 of these as well:
hdmi-audio-codec hdmi-audio-codec.8.auto: HDMI: Unknown ELD version 0

This means that after just a few minutes, 'dmesg' has now become utterly
useless as it ONLY contains these errors/lines.

Booting into older kernels didn't seem to have an effect. If it had, I
could start to bisect it. I have no idea where it comes from.
So now I have removed pipewire ... and everything that depends on it ...
of which 'mpv' is the most important to me.
Now those errors are actually gone. And dmesg actually useful again.

So I guess it's triggered by (a change in) pipewire, but still the
kernel should not be generating endless copies of the same error. Once
or twice should be enough.

Can something be done about this?

Cheers,
  Diederik

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
