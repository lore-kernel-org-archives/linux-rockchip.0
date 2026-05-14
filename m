Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99954CD4F39
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 May 2026 06:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KP8F7cyZR3EYAW5ma6ZuInOhNOghVXLWFI15XErSYCA=; b=L2s0YBn2v0Kd5f
	JZKPKWoBTpqwN6rrpf0y4e6YfUv/9bcDF7SqoCg+PS1wahi3/6pab949SwZarglQSchX4uqkiIQoC
	9gUJTDRN7UNdye8Jl0EwWW6gWs1LtoQnB3U/wqOzeSWoPcErpesgM8OzP8ZItOzoZhpbRDpbqP8+u
	usstIXyHQYAOPAcj8/vcOVOlX14DIhdXKxjEZ1J8JxR+wGpJSBkQLr/DjQ2VO16I0dDyC133PBDcc
	85hAqat7Tw4l1i2E8mzJCkYXFpOlWXgOD5Gv4jfXEHVNJiuZIA3g0harztFWumdiFAeYCXDR5Ixz1
	JG3xnbyhUnR5FTe9CImQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNPsV-00000004ki6-2vIO;
	Thu, 14 May 2026 06:49:03 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNPsU-00000004khj-2ejN
	for linux-rockchip@lists.infradead.org;
	Thu, 14 May 2026 06:49:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id E896F60126;
	Thu, 14 May 2026 06:49:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18B6DC2BCC6;
	Thu, 14 May 2026 06:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778741341;
	bh=kV2o7etbiZ1xCvqmtMuywQhhRRr9HS66gjhYQJ3K4ZU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Btuh47GbvI3I1oCGW2UgyyI/bokQrBi1bCH27SWwJgV6o30DAmiXr666HA6hBjKpU
	 osqSwAGpNim0btT5qrBPlOO9dzx6pygFnEDrxIWjaBKxJhwcPrG0+RLI0EcmBzHk7v
	 JLl/rucGHc50nC7YZBH/WQLK73sA7Oo6xjUMREuEYLOxyV+KRSGSn8aMiO6BKjp/3w
	 nhZl/D45kayoeUz4bG+taqd3Llf0OCoBkplKgK+Q4hTzDjiCcHRiJnanEjWsaWNBmT
	 Bv3rzRnyVaS/qR3rW8eXZZrS+oa+fv7s0+WK9Uxb1WMpYZHBkf/OYvqKxdfunTpI7I
	 EGc29mH0DQNRA==
Date: Thu, 14 May 2026 08:48:59 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com, 
	dlechner@baylibre.com, jic23@kernel.org, jean-baptiste.maneyrol@tdk.com, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org, 
	krzk+dt@kernel.org, robh@kernel.org, andriy.shevchenko@intel.com, 
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V6 02/11] dt-bindings: iio: imu: icm42600: Add icm42607
 binding
Message-ID: <20260514-optimal-warping-donkey-fbf24c@quoll>
References: <20260512221634.256747-1-macroalpha82@gmail.com>
 <20260512221634.256747-3-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260512221634.256747-3-macroalpha82@gmail.com>
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

On Tue, May 12, 2026 at 05:16:23PM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add devicetree binding for the Invensense ICM42607 and Invensense
> ICM42607P inertial measurement unit. This unit is a combined
> accelerometer, gyroscope, and thermometer available via I2C or SPI.
> 
> This device is functionally very similar to the icm42600 series with a
> very different register layout.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../devicetree/bindings/iio/imu/invensense,icm42600.yaml        | 2 ++
>  1 file changed, 2 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
