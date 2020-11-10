Return-Path: <SRS0=cmcl=EQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 01673C388F7
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Nov 2020 11:35:38 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8641220659
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Nov 2020 11:35:37 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="N2nrICOx"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8641220659
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=N1m3NEIfElW9ICcYm4ZQNsCS8fRx9EAladvXArw37Gc=; b=N2nrICOx14KgDWaM0Z0/9tJSz2
	BTsYybYASADAmVGySEs35KlD8F/QDRtxaUYRmEr/PqA9ohRkcTerUf5S2zgyfquTWi4fg1UZi085F
	xkiK8DIVpfGLBI2UczCp6DkYYKNFQ7NEKtdhlkjDv6h5wcx11WpBSlxsNVwrylRgD1UzTV3+acLSq
	zRX9Zuy/6hFmFkNSs0GbVEEOFvRw9Pc8bVoVSVK/hAqHzX8klTOgaIebAHL59V3cvDLsd9MZPrf4k
	ObEETUONXyaAUzGpBVNTkl5OfkP42Mi6oBFLZDtvsSWOJCXxR5+mBXLO/9BcAcJEn9XJt9C/91gj4
	+Knpxc7w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kcRvy-0006yB-8x; Tue, 10 Nov 2020 11:35:34 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kcRvv-0006xC-MT
 for linux-rockchip@lists.infradead.org; Tue, 10 Nov 2020 11:35:32 +0000
Received: from guri.fritz.box
 (p200300c7cf1c4d00f55477954bc20769.dip0.t-ipconnect.de
 [IPv6:2003:c7:cf1c:4d00:f554:7795:4bc2:769])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 3A8F21F451AB;
 Tue, 10 Nov 2020 11:35:29 +0000 (GMT)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v4l-utils 0/1] test-media: Add a python script for rkisp1 tests
Date: Tue, 10 Nov 2020 12:35:21 +0100
Message-Id: <20201110113522.14679-1-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201110_063531_830671_85E968E2 
X-CRM114-Status: GOOD (  13.01  )
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
Cc: mchehab@kernel.org, dafna.hirschfeld@collabora.com, dafna3@gmail.com,
 tfiga@chromium.org, hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

I am adding the script I used to test the rkisp1 driver.

here is the help of the command:

# python3 ./test-rkisp1.py -h
usage: test-rkisp1.py [-h] [-v] [-s SENSOR] [-o OUTPUT] [-S] [-c] [-C]
                      [-P PIXELFORMAT [PIXELFORMAT ...]] [-p PATH [PATH ...]]
                      [--isp-dim ISP_DIM]
                      [--resizer-dim RESIZER_DIM [RESIZER_DIM ...]]

TL;DR: just run `python3 test-rkisp1.py`.

    This is a tests script for rkisp1 driver. There are two ways to run the script, either by using
    a hardcoded set of tests, or by giving parameters for a custom test (see 'customized test' options).

    To run a custom test, you should define all the parameters under the 'customized test' section.
    If both selfpath and mainpath are given in the '--path' option then the '--pixelformat' and '--resizer-dim'
    should also have two values, one for each path.
    For example:
    Configure selfpath to YUYV,640x480 and mainpath to NV12,800x600:

    python3 ./test-rkisp1.py -p selfpath mainpath -P YUYV NV12 --isp-dim 640x480 --resizer-dim 640x480 800x600 -S

    The script was developed for python version 3.7.6 and might not work with other versions.



optional arguments:
  -h, --help            show this help message and exit
  -v, --verbose         verbose output, logs are printed to stdout and to
                        {outputdir}/log.txt
  -s SENSOR, --sensor SENSOR
                        sensor to use. If not given, then the first sensor
                        found is used
  -o OUTPUT, --output OUTPUT
                        directory to add output streams. Default is current
                        directory '.'
  -S, --store           store stream to output folder
  -c, --compliance      run compliance tests when streaming
  -C, --cam             also run some tests with the 'cam' command from
                        libcamera

customized test:
  those options are for running specific tests of you own.

  -P PIXELFORMAT [PIXELFORMAT ...], --pixelformat PIXELFORMAT [PIXELFORMAT ...]
                        the pixelformat(s)
  -p PATH [PATH ...], --path PATH [PATH ...]
                        the stream path. Allowed values are 'selfpath',
                        'mainpath'
  --isp-dim ISP_DIM     the {width}x{height} of the isp output.
  --resizer-dim RESIZER_DIM [RESIZER_DIM ...]
                        the {width}x{height} of the final image


Dafna Hirschfeld (1):
  test-media: Add a python script for rkisp1 tests

 contrib/test/test-rkisp1.py | 576 ++++++++++++++++++++++++++++++++++++
 contrib/test/v4l2lib.py     |  90 ++++++
 2 files changed, 666 insertions(+)
 create mode 100755 contrib/test/test-rkisp1.py
 create mode 100644 contrib/test/v4l2lib.py

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
