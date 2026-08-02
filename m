Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E79EC55162
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Aug 2026 13:13:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XGlr80JyXYtXr2HLDmrpED/dv8vDDvBxYv+uFIx4uak=; b=U0aEoBw4zc3U3i
	sRj8a89oCdwFawmykJTZEu2iEP1GkCEdgF/ByHFilgiCTqJb/Hf/Iksm4IxC7H7JSl7Q5bbBaquIU
	C05lSZRrNSsx8gXS8EG7kSUjqjCFQuA9wmin8xwriv+XONYxQ/dTjcj1i2DQI5VHrblh1inphQK+O
	s1ARGAgGwHNyv8QMPvuo+QsH9L9+VkOPIPKvaLlR7LMR4KhawP+Mt9ywi7EXM3/JLJJGByZNA5O6p
	yFT1qagntWreXUd5W3VgIgnmDgjSqAtGmQGk2S7STQuyRzyJTK3+eklHnYTz0FxhMQ9uWlk7+2RT3
	8eHUFFJqmuqz5xdlZAAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqW0f-0000000FemW-3mIc;
	Sun, 02 Aug 2026 13:13:45 +0000
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqW0c-0000000FemA-3mKj
	for linux-rockchip@lists.infradead.org;
	Sun, 02 Aug 2026 13:13:44 +0000
Received: by mail-pf1-x434.google.com with SMTP id d2e1a72fcca58-8487214ad2bso3634606b3a.1
        for <linux-rockchip@lists.infradead.org>; Sun, 02 Aug 2026 06:13:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=furiosa.ai; s=google; t=1785676421; x=1786281221; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=0twFV3mHRznw8yaEodkq4tq3QB77XZJk3sNwlDZSssw=;
        b=OZG9mtR0ZDMcW0rDTls5Kjk/B8WdTTnYYPWlkimMRUOF2F9UdZG5nK9g0LHaxJ9Ofo
         pBR6QGIeMuKtFvHPeodDRcrKgqslR+YbYANN5jnGM0QGcTaqfzu0wwx9MK4C1SJ29/dE
         tWLSZJ6kJS+/i1W232rH45GDYDw3q1vswYuhU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785676421; x=1786281221;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=0twFV3mHRznw8yaEodkq4tq3QB77XZJk3sNwlDZSssw=;
        b=he41V5vzRTiiuo1326WIzhNIt0T9oSVpxnu7xDzoqveVNI3Gv0D15P3mK3qjI59ICN
         +FUgCSUWfk8AKOY/tKlHBF3GoOhUorhntBZo05i76DVeLntSVFvselD3MBILByMCaK5/
         CF8NNBlEiIcpys6wo/MRR7gqNKw08aLPXsw2c6sB7xgC1E0M+PsA3sICt3h3N+w3Ra6G
         aSGAgR+isZu27NSArLoNbVNReLqEB276DS4e32Wr3hFE5Bo8sMlqwPjXdxx/xkZu9Hrw
         D1qlcVhKnQjvCRgkjplcqcsAA+qi79uuj9lbDqEqBP+R/xiqBUKiNkjj5FZWkgPwnQhP
         fkwg==
X-Forwarded-Encrypted: i=1; AHgh+RrKj5yw1CtdCltFOEumrarH0n5f9HNpdYRP4E51+eCewqgUEYOX3gJd87tctdJKclx6Q+AU2sotB4EAT/b7Dg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw/+BlbFsozV3u3qyTOCaSzeSOQVoUf9ojA7F8LP2Cxp5303dDE
	Ry41Z5VD6jK4sclA//d/0JASS8qLRWu7hgFhLbM9ypplO6JoIMR/gwMiBtuJqAjfnnw=
X-Gm-Gg: AR+sD106CUysQnVC+x3vH79CJfoZO4GlIocVvGUzT+U6sHXh5l59qo52kuC8oAM9XWt
	8uG+ObIuqTbbgw1fW9W0DkHrLYovj3cJ+HHEpYWytyvJsJXMyZZPGQKD0VvMcBPXiQdxyBQHlSN
	T8yGLnGaAQh9GxES2pJFNboBCE34NzdXoIDrSaMBjgYvMJG+mrMv3KicLhRIL4EpcUwXppqKNcY
	DXNe7lCbFp+/hYlG8NNSy1Cer89SOSZnlY+niSsyAsfrgXvujVrftxiYidkimO9PUfb136gF8RZ
	QlQJuNBJaIjfs9CBGz237RlVe19/PGrw4s3nE0OE11HZzBZsTOu7Kmpq3ltOGM8nwIddSdozwye
	RbRh8sqSozgNJKhcdZDG5ck5c36XLoy72hyIZo/iXHNQMMXcoSEnekYvosYDVMKAYZtLNyFXW25
	qogl01ANJC9Yhtl9p2LjEsfztDuEmU7AJ98MBhrFB64+cvp27HnrIt99z1/HXXMFz0hzZkYY0Gg
	RwHTVytzXtv0fL55Q==
X-Received: by 2002:a05:6a00:3c89:b0:847:8b11:5966 with SMTP id d2e1a72fcca58-84ee47e4485mr5862655b3a.1.1785676421413;
        Sun, 02 Aug 2026 06:13:41 -0700 (PDT)
Received: from localhost.localdomain ([61.83.209.48])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84edbe57020sm2547045b3a.17.2026.08.02.06.13.39
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Sun, 02 Aug 2026 06:13:41 -0700 (PDT)
From: Sidong Yang <sidong.yang@furiosa.ai>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Igor Paunovic <royalnet026@gmail.com>
Cc: ogabbay@kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	gahing@gahingwoo.com,
	heiko@sntech.de,
	Sidong Yang <sidong.yang@furiosa.ai>
Subject: Re: [PATCH v2] accel/rocket: request the core clocks by name
Date: Sun,  2 Aug 2026 22:13:28 +0900
Message-ID: <20260802131328.75038-1-sidong.yang@furiosa.ai>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20260729130743.128876-1-royalnet026@gmail.com>
References: <20260729130743.128876-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260802_061342_950516_737CE26A 
X-CRM114-Status: UNSURE (   9.97  )
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

On Wed, Jul 29, 2026 at 03:07:43PM +0200, Igor Paunovic wrote:
> Found on an Orange Pi 5 Plus (RK3588) by reading the live clock tree:

I see the same thing on a Radxa ROCK 5B+ (RK3588), and the patch fixes
it here as well.

Before, clk_summary has the four rocket handles piled up on the AXI
clock, with no driver consumer at all on the other three:

  aclk_npu0       4x fdab0000.npu    1x npu@fdab0000
  hclk_npu0        -                 1x npu@fdab0000
  pclk_npu_root    -                 3x npu@fdXX0000
  scmi_clk_npu     -                 3x npu@fdXX0000

After the patch every clock has exactly one fdXX0000.npu consumer, and
scmi_clk_npu picks up driver handles for all three cores.

No regressions here:

 - 90 runtime PM suspend/resume cycles over the three cores: no
   power-domain ack failures, no SErrors, nothing logged at all.
   scmi_clk_npu stays at its boot rate and returns to enable_cnt 0
   when the cores go idle.

 - Five MobileNetV2 subgraphs through the Teflon TFLite delegate still
   match the CPU reference (max diff 1).  I could not measure any change
   in inference time either way, though run-to-run spread on this box is
   around 10%, so that only rules out a large regression.

Tested on v7.2-rc3.

Tested-by: Sidong Yang <sidong.yang@furiosa.ai>

Thanks,
Sidong

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
