Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29816C44529
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Jul 2026 08:10:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wKys9KtWfoA0ARvTASiqfV9CSyCgF+sz27GSxsUg+7o=; b=ehEktWQl85220b
	j4Vq9LuMxjiUQag61pVAUHwH0IVBWBuJ3M6l0hIgGJ9jSo2/lziZX27oSCD3jELephhPp6afJksKe
	edzD3RVNKgzKbmOSchwMG9Xls7UNEdwfpQIQDbMdGbcTmLtZaT5b2mcLLDC9vmO4B+JjNv5efXy0i
	QO3gkDzfLxiJwHVRKHCJ1+MFG8rP07hcxOdU8vpdp+YVUN+W5I6sh7gxZLe1PSuOj5l7jERRCzaVn
	S9ZX6yTIhPrFq9GfN6r2hQxNUuTffWJVHBFlEJtBJBLkFONOhzK8Zjxm1uq0QHDyaPy1ZgLpp6Wi1
	u60j+WVNOjfJtNXNNFtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm5Yk-00000008kkH-1IDJ;
	Tue, 21 Jul 2026 08:10:38 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm5Yj-00000008kj9-0Gkk;
	Tue, 21 Jul 2026 08:10:37 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 3945860A95;
	Tue, 21 Jul 2026 08:10:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2BBFB1F000E9;
	Tue, 21 Jul 2026 08:10:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784621435;
	bh=W4hbMQnB46wG1SNw4jOcw8NZbJbNKlp5kLpoFurs4z8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=oE0FmcWHdyt01lzqjKv+miEXI14UaDfhiEf8WW3/x1cW8NhDi+nCSH0e7dm4l/mI4
	 9dWffgSoJpA/fZXHaG7TcLsglvEdlHTYITk40O4zZMf36a7IRtIY+PhOvrBYN6lXKl
	 7LnHacTaqTQQ+iCH954OICG6Q9n3+vqjeutWrC+9ib/zXYD63llatjo5Xylrp5r7sa
	 /+wUWcFNhLc3dKb/bhi50uL592kgws388s3lg4HyyM+1dAFeIsmxRCw+y+kNOfjZlR
	 YAA14IUvDw1W1K3jVo7Cnaj1mumNkpEjKtKuMzB81qzKb02KKZOwRmnhNOAGLXXwgy
	 +1fSSHPpG2bjw==
Date: Tue, 21 Jul 2026 10:10:32 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Simon Glass <sjg@chromium.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Jiri Slaby <jirislaby@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: serial: snps-dw-apb-uart: Add RV1106
 compatible
Message-ID: <20260721-honorable-mamba-of-order-fdf14e@quoll>
References: <20260714132035.v2.1.c1d92213393f49330ec14d0c670a802181b4fcbf@changeid>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260714132035.v2.1.c1d92213393f49330ec14d0c670a802181b4fcbf@changeid>
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

On Tue, Jul 14, 2026 at 01:20:36PM -0600, Simon Glass wrote:
> Add the compatible for the UARTs of the Rockchip RV1106, which are
> compatible with the Synopsys DesignWare APB UART.
> 
> Signed-off-by: Simon Glass <sjg@chromium.org>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
